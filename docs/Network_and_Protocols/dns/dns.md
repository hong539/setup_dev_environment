# dns

## guides/tips/...etcs

* [Building a DNS server in Rust](https://github.com/EmilHernvall/dnsguide)
* [www.isc.org/bind](https://www.isc.org/bind/)
    * bind9
        * [hub.docker.com/r/internetsystemsconsortium/bind9](https://hub.docker.com/r/internetsystemsconsortium/bind9)
* DNS sinkhole
    * [AdGuardHome](https://github.com/AdguardTeam/AdGuardHome)
        * Network-wide ads & trackers blocking DNS server
    * [pi-hole](https://github.com/pi-hole)

## DNS CLI tools

```
nslookup google.com

dig +short NS @resolver

dig +nssearch google.com

cat /etc/resolv.conf

systemd-resolve --status | grep "DNS Servers"
```