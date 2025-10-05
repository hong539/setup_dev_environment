# go

## install and setup

* [Ubuntu](https://github.com/golang/go/wiki/Ubuntu)

```shell
#install golang from source
#src:https://go.dev/dl/

#Adding 3rd party ppa to install golang
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go
sudo add-apt-repository --remove ppa:longsleep/golang-backports
```

* [Arch Linux](https://wiki.archlinux.org/title/Go)

```shell
which go
go version

```


## basic

* [golang](https://roadmap.sh/golang)
* [Documentation](https://go.dev/doc/)
* [bregman-arie/go-exercises](https://github.com/bregman-arie/go-exercises)

## Why golang CLI can't?

* [proposal: bash_completions support](https://github.com/golang/go/issues/58598)

## projects/tips/guides with golang

* [github.com/blackdesert575/golang-101](https://github.com/blackdesert575/golang-101)
* [ptt/pttweb](https://github.com/ptt/pttweb)
* [Cobra](https://github.com/spf13/cobra)
* [urfave/cli](https://github.com/urfave/cli)
* [Go kit/A toolkit for microservices](https://gokit.io/)
* [gin](https://github.com/gin-gonic/gin)
* [worker-pools](https://gobyexample.com/worker-pools)
* [trivy](https://github.com/aquasecurity/trivy)
    * Find vulnerabilities, misconfigurations, secrets, SBOM in containers, Kubernetes, code repositories, clouds and more 
* [runc](https://github.com/opencontainers/runc)
    * CLI tool for spawning and running containers according to the OCI specification