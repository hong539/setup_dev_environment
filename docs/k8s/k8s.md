# Kubernetes

## Guides/Tips/Misc...etc

* [What is DC/OS?](https://dcos.io/)
* [DC/OS vs Kubernetes: What are the differences?](https://stackshare.io/stackups/dcos-vs-kubernetes)
* [Spring Cloud 和 Kubernetes](https://youtu.be/_xMgDF8_mKY)
* [Kubernetes integration with Spring Cloud Discovery Client, Configuration, etc... ](https://github.com/spring-cloud/spring-cloud-kubernetes)
* [當 Spring Cloud 遇上 Kubernetes](https://medium.com/brobridge/%E7%95%B6-spring-cloud-%E9%81%87%E4%B8%8A-kubernetes-5bc9e6ce602f)
* [Amazon EKS Anywhere](https://anywhere.eks.amazonaws.com/docs/)
* [Harvester](https://harvesterhci.io/)
    * [github/harvester](https://github.com/harvester/harvester)
* [How do you connect Kubernetes clusters located in different data centres?](https://learnk8s.io/bite-sized/connecting-multiple-kubernetes-clusters)
* [kubespray](https://github.com/kubernetes-sigs/kubespray)
    * Deploy a Production Ready Kubernetes Cluster
* [need-some-explaination-of-kubectl-stdin-and-pipe](https://stackoverflow.com/questions/54032336/need-some-explaination-of-kubectl-stdin-and-pipe)
* [volumes](https://kubernetes.io/docs/concepts/storage/volumes/)
* [workloads](https://kubectl.docs.kubernetes.io/guides/introduction/resources_controllers/#workloads)
* [Tutorials](https://kubernetes.io/docs/tutorials/#basics)
* [interacting-with-deployments-and-services](https://kubernetes.io/docs/reference/kubectl/cheatsheet/#interacting-with-deployments-and-services)
* [Why dig does not resolve K8s service by dns name while nslookup has no problems with it?](https://stackoverflow.com/questions/50668124/why-dig-does-not-resolve-k8s-service-by-dns-name-while-nslookup-has-no-problems)
* Troubleshooting
    * [Safely Drain a Node](https://kubernetes.io/docs/tasks/administer-cluster/safely-drain-node/)
    * [Migrating the workloads](https://cloud.google.com/kubernetes-engine/docs/tutorials/migrating-node-pool#step_4_migrate_the_workloads)
* [Kubernetes 101, part I, the fundamentals](https://dev.to/leandronsp/kubernetes-101-part-i-the-fundamentals-23a1)
* [Spring Cloud for Microservices Compared to Kubernetes](https://developers.redhat.com/blog/2016/12/09/spring-cloud-for-microservices-compared-to-kubernetes)
* [Here's what to know about changes to kubectl authentication coming in GKE v1.26](https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke)

```shell
#當使用GKE的k8s時，如果需要擴增node pool，但原先舊有node pool已有的deployment已掛載了PersistentVolumeClaim，執行kubectl drain遇到錯誤，該如何處理?
#將 PersistentVolumeClaim 轉移到新的 StorageClass。
#您需要先建立一個新的 StorageClass，然後將 PersistentVolumeClaim 轉移到這個 StorageClass 上。可以使用下列指令來轉移：
kubectl patch pvc <pvc-name> -p '{"spec":{"storageClassName":"<new-storage-class-name>"}}'

```

## admin tools

* kubectl
* kubie

## kind

* [kubernetes-sigs/kind](https://github.com/kubernetes-sigs/kind)
* [kind](https://kind.sigs.k8s.io/)
    * kind is a tool for running local Kubernetes clusters using Docker container “nodes”. kind was primarily designed for testing Kubernetes itself, but may be used for local development or CI.
    * [docs/design/initial](https://kind.sigs.k8s.io/docs/design/initial/)
* [剖析 KIND(Kubernetes IN Docker) 的實作原理 - HungWei Chiu](https://hackmd.io/TvUa7q52R4a8HG9lPu-rVw)