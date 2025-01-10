# helm

## Docs/Guides/tips...etc

* [helm_install](https://helm.sh/docs/helm/helm_install/)
```
You can specify the '--values'/'-f' flag multiple times. The priority will be given to the last (right-most) file specified.
```

* [Subcharts and Global Values](https://helm.sh/docs/chart_template_guide/subcharts_and_globals/)

```
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash


helm repo add gatus https://avakarev.github.io/gatus

helm repo update

helm fetch gatus/gatus

helm template my-gatus-release gatus/gatus -f values.yaml > output.yaml

helm template my-gatus-release gatus/gatus --set key1=value1,key2=value2 > output.yaml

```

values.yaml

```
image:
  tag: "latest"
config:
  endpoints:
    - name: "example"
      url: "https://example.com/health"
      interval: "5m"
```

```
helm template my-gatus-release gatus/gatus -f values.yaml > gatus.yaml

helm template my-gatus-release gatus/gatus --set image.tag=latest,config.endpoints[0].name=example,config.endpoints[0].url=https://example.com/health,config.endpoints[0].interval=5m > gatus.yaml
```