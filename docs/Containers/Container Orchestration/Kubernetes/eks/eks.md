# EKS

## Guides/tips/misc...etc

* killercoda
    * [killercoda.com](https://killercoda.com/)
* Karpenter
    * [docs.aws.amazon.com/eks/latest/best-practices/karpenter.html](https://docs.aws.amazon.com/eks/latest/best-practices/karpenter.html)
* [Route internet traffic with AWS Load Balancer Controller](https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html)
* [cloud-provider-aws](https://github.com/kubernetes/cloud-provider-aws)
* [aws-load-balancer-controller](https://github.com/kubernetes-sigs/aws-load-balancer-controller)
    * [AWS Load Balancer Controller installation](https://kubernetes-sigs.github.io/aws-load-balancer-controller/latest/deploy/installation/#aws-load-balancer-controller-installation)
        * The AWS LBC provides a mutating webhook for service resources to set the spec.loadBalancerClass field for service of type LoadBalancer on create. This makes the AWS LBC the default controller for service of type LoadBalancer. You can disable this feature and revert to set Cloud Controller Manager (in-tree controller) as the default by setting the helm chart value enableServiceMutatorWebhook to false with --set enableServiceMutatorWebhook=false . You will no longer be able to provision new Classic Load Balancer (CLB) from your kubernetes service unless you disable this feature. Existing CLB will continue to work fine.
            * the default controller for service
            * Cloud Controller Manager (in-tree controller)
    * [artifacthub/aws-load-balancer-controller](https://artifacthub.io/packages/helm/aws/aws-load-balancer-controller)
        * enableServiceMutatorWebhook