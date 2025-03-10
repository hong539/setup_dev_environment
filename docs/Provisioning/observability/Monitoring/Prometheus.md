# Prometheus


## Docs/Guides/...etc

* [Ansible Collection for Prometheus](https://github.com/prometheus-community/ansible)
* [docs/prometheus/latest/installation/#installation](https://prometheus.io/docs/prometheus/latest/installation/#installation)
* [Thanos](https://thanos.io/)
    * Open source, highly available Prometheus setup with long term storage capabilities.
    * [Table of Contents](https://thanos.io/tip/components/query.md/)
* [Version 2.53/Configuration](https://prometheus.io/docs/prometheus/2.53/configuration/configuration/)

```
Prometheus can reload its configuration at runtime. If the new configuration is not well-formed, the changes will not be applied. A configuration reload is triggered by sending a SIGHUP to the Prometheus process or sending a HTTP POST request to the /-/reload endpoint (when the --web.enable-lifecycle flag is enabled). This will also reload any configured rule files.
```

* [querying/operators/#comparison-binary-operators](https://prometheus.io/docs/prometheus/latest/querying/operators/#comparison-binary-operators)
* [artifacthub/prometheus-community/prometheus](https://artifacthub.io/packages/helm/prometheus-community/prometheus)
* [Alertmanager](https://prometheus.io/docs/alerting/latest/overview/)
    * [go template](https://pkg.go.dev/text/template)
        * binary comparison operators
    * [amtool](https://github.com/prometheus/alertmanager?tab=readme-ov-file#amtool)
        * amtool is a cli tool for interacting with the Alertmanager API. It is bundled with all releases of Alertmanager.