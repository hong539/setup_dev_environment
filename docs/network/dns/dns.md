# dns

## guides/tips/...etcs

* [Building a DNS server in Rust](https://github.com/EmilHernvall/dnsguide)
* DNS sinkhole
    * [AdGuardHome](https://github.com/AdguardTeam/AdGuardHome)
    * [pi-hole](https://github.com/pi-hole)

## DNS CLI tools

```
nslookup google.com

dig +short NS @resolver

dig +nssearch google.com

cat /etc/resolv.conf

systemd-resolve --status | grep "DNS Servers"
```