#!/usr/bin/env python3
import argparse
import boto3
import configparser
from datetime import datetime, timedelta, timezone
import os
import sys

# 顏色輸出
RED = "\033[1;31m"
GREEN = "\033[1;32m"
YELLOW = "\033[1;33m"
BLUE = "\033[1;34m"
WHITE = "\033[0m"


def print_error(msg):
    print(f"{RED}{msg}{WHITE}", file=sys.stderr)


def print_info(msg):
    print(f"{GREEN}{msg}{WHITE}")


def print_warn(msg):
    print(f"{YELLOW}{msg}{WHITE}")


def update_credentials(profile_name, access_key, secret_key, session_token):
    """
    將 MFA 驗證後的臨時憑證寫入 ~/.aws/credentials
    """
    aws_dir = os.path.expanduser("~/.aws")
    os.makedirs(aws_dir, exist_ok=True)
    cred_file = os.path.join(aws_dir, "credentials")

    config = configparser.RawConfigParser()
    if os.path.exists(cred_file):
        config.read(cred_file)

    if profile_name not in config:
        config.add_section(profile_name)

    config[profile_name]["aws_access_key_id"] = access_key
    config[profile_name]["aws_secret_access_key"] = secret_key
    config[profile_name]["aws_session_token"] = session_token

    with open(cred_file, "w") as f:
        config.write(f)


def main():
    parser = argparse.ArgumentParser(description="AWS MFA 登入工具（Python 版本）")
    parser.add_argument("user_name", help="AWS IAM 使用者名稱")
    parser.add_argument("mfa_code", help="MFA 驗證碼 (6 碼數字)")
    parser.add_argument(
        "--profile", default="mfa", help="寫入 AWS credentials 的 Profile 名稱 (預設: mfa)"
    )
    args = parser.parse_args()

    user_name = args.user_name
    mfa_code = args.mfa_code
    profile_name = args.profile

    # 驗證 MFA Code 格式
    if not mfa_code.isdigit() or len(mfa_code) != 6:
        print_error("MFA 驗證碼必須為 6 碼數字")
        sys.exit(1)

    # 取得 MFA 裝置序號
    try:
        iam_client = boto3.client("iam")
        devices = iam_client.list_mfa_devices(UserName=user_name)["MFADevices"]
        if not devices:
            print_error("找不到對應的 MFA 裝置，請確認使用者名稱是否正確")
            sys.exit(1)
        mfa_serial = devices[0]["SerialNumber"]
    except Exception as e:
        print_error(f"IAM 查詢失敗：{e}")
        sys.exit(1)

    # 取得 Session Token
    try:
        sts_client = boto3.client("sts")
        response = sts_client.get_session_token(
            DurationSeconds=129600,  # 36 小時
            SerialNumber=mfa_serial,
            TokenCode=mfa_code,
        )
    except Exception as e:
        print_error(f"MFA 驗證失敗：{e}")
        sys.exit(1)

    credentials = response["Credentials"]
    access_key = credentials["AccessKeyId"]
    secret_key = credentials["SecretAccessKey"]
    session_token = credentials["SessionToken"]
    expiration = credentials["Expiration"]  # UTC 時間

    # 轉換成台北時間
    taipei_time = expiration.astimezone(timezone(timedelta(hours=8)))
    formatted_time = taipei_time.strftime("%Y-%m-%d %H:%M:%S")

    # 更新 credentials
    update_credentials(profile_name, access_key, secret_key, session_token)

    print_info(f"MFA 驗證成功，已將憑證寫入 [profile: {profile_name}]")
    print(f"{BLUE}到期時間：{formatted_time} (台北時間){WHITE}")


if __name__ == "__main__":
    main()