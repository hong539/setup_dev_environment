# Amazon Virtual Private Cloud

## Docs/Tips/...etc

* [Subnet sizing for IPv4](https://docs.aws.amazon.com/vpc/latest/userguide/subnet-sizing.html?utm_source=chatgpt.com#subnet-sizing-ipv4)
    * 10.0.0.2: Reserved by AWS. The IP address of the DNS server is the base of the VPC network range plus two. For VPCs with multiple CIDR blocks, the IP address of the DNS server is located in the primary CIDR. We also reserve the base of each subnet range plus two for all CIDR blocks in the VPC. For more information, see Amazon DNS server.
* [Amazon DNS server](https://docs.aws.amazon.com/vpc/latest/userguide/AmazonDNS-concepts.html#AmazonDNS)
    * The Route 53 Resolver (also called "Amazon DNS server" or "AmazonProvidedDNS") is a DNS Resolver service which is built into each Availability Zone in an AWS Region.