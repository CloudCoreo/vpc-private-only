cloudcoreo-vpc-private
======================

## Description
This [CloudCoreo](http://www.cloudcoreo.com) repository will add private subnets to an existing public-subnet-only VPC.

## Tags
1. Network
1. VPC
1. Private Subnet

## Categories

1. Network

<h3>OVERRIDE OPTIONAL VARIABLES</h3>
* <b>VPC_NAME:</b>
  * required: true
  * description: this is the name of your vpc as defined by your [CloudCoreo](http://www.cloudcoreo.com) setup
  * default: test-vpc
* <b>PRIVATE_SUBNET_NAME:</b>
  * required: true
  * description: the [CloudCoreo](http://www.cloudcoreo.com) name of the private vpc subnets
  * default: test-private-subnet
* <b>PRIVATE_ROUTE_NAME:</b>
  * required: true
  * description: the name to give to the private route
  * default: test-private-route

## Diagram
![alt text](https://raw.githubusercontent.com/CloudCoreo/vpc-private-only/master/images/vpc-private-only.png "Private VPC across 3 subnets")
