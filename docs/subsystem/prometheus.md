# Prometheus


## Docs/Guides/...etc

* [Version 2.53/Configuration](https://prometheus.io/docs/prometheus/2.53/configuration/configuration/)

```
Prometheus can reload its configuration at runtime. If the new configuration is not well-formed, the changes will not be applied. A configuration reload is triggered by sending a SIGHUP to the Prometheus process or sending a HTTP POST request to the /-/reload endpoint (when the --web.enable-lifecycle flag is enabled). This will also reload any configured rule files.
```

* [artifacthub/prometheus-community/prometheus](https://artifacthub.io/packages/helm/prometheus-community/prometheus)