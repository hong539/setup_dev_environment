# docker

## guides/tips/...etc

* [docker-architecture](https://docs.docker.com/guides/docker-overview/#docker-architecture)
* [Containers versus virtual machines (VMs)](https://docs.docker.com/guides/docker-concepts/the-basics/what-is-a-container/#containers-versus-virtual-machines-vms)
* [Inline cache](https://docs.docker.com/build/cache/backends/inline/)
* gracefully shutdown
    * [執行 Docker 容器可使用 dumb-init 或 tini 改善程序優雅結束的問題](https://blog.miniasp.com/post/2021/07/09/Use-dumb-init-in-Docker-Container)
    * [tini](https://github.com/krallin/tini)
        * A tiny but valid `init` for containers
    * [dumb-init](https://github.com/Yelp/dumb-init)
        * A minimal init system for Linux containers