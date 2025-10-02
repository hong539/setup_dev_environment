# ssh

## Guides/Tips/Misc...etc

* Warpgate
    * [warpgate.null.page](https://warpgate.null.page/)
    * [github.com/warp-tech/warpgate](https://github.com/warp-tech/warpgate)
* [github.com/bahamas10/bash-web-server/tree/main](https://github.com/bahamas10/bash-web-server/tree/main)
* [github.com/gliderlabs/ssh/tree/master](https://github.com/gliderlabs/ssh/tree/master)
* [github.com/mkj/dropbear](https://github.com/mkj/dropbear)
* [OpenSSH ](https://www.openssh.com/)
* [github.com/openssh/openssh-portable](https://github.com/openssh/openssh-portable)
* SSH Tunneling
    * Local port forwarding
    * Remote Port Forwarding
    * Dynamic Port Forwarding
```shell
ssh -i ~/.ssh/key.pem \
    -D 1080 \
    ec2-user@<bastion-public-ip>
```
    * [SSH Tunnel 應用二三事](https://hackmd.io/@1KJngEhaRtGo-19TQntkpA/r1z5qciTY)
    * [用 ssh tunnel 連線到 router 背後的機器，並建立 SOCKS5 proxy 存取內網資源](https://hackmd.io/@DailyOops/ssh-reverse-tunnel-behind-the-router-with-socks5-proxy)
    * [www.redhat.com/en/blog/ssh-dynamic-port-forwarding](https://www.redhat.com/en/blog/ssh-dynamic-port-forwarding)
* [Setting Automatic SSH-Agent for GitBash](https://gist.github.com/adojos/5aab5e1dcedc16957c465be0212ea099)
* [Auto-launching ssh-agent on Git for Windows](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows)
* SSH agent forwarding
    * [askubuntu.com/questions/1008052/how-to-use-ssh-agent-forwarding](https://askubuntu.com/questions/1008052/how-to-use-ssh-agent-forwarding)
* [hterm and Secure Shell](https://chromium.googlesource.com/apps/libapps/+/HEAD/README.md)