cloudcoreo-vpc-private
======================


## Description
This [CloudCoreo](http://www.cloudcoreo.com) repository will add private subnets to an existing public-subnet-only VPC.


## Hierarchy
![composite inheritance hierarchy](https://raw.githubusercontent.com/CloudCoreo/vpc-private-only/master/images/hierarchy.png "composite inheritance hierarchy")



## Required variables with no default

**None**


## Required variables with default

### `VPC_NAME`:
  * description: the name of the VPC
  * default: test-vpc


### `VPC_OCTETS`:
  * description: the /16 net of the VPC to look for - i.e 10.11.0.0
  * default: 10.11.0.0


### `REGION`:
  * description: use default except for multiple region use cases
  * default: PLAN::region

### `PRIVATE_ROUTE_NAME`:
  * description: the name to give to the private route
  * default: test-private-route


### `PRIVATE_SUBNET_NAME`:
  * description: the cloudcoreo name of the private vpc subnets
  * default: test-private-subnet



## Optional variables with default

### `VPC_TAGS`:
  * description: tags to apply to the vpc
  * default: 


## Optional variables with no default

### `SUFFIX`:
  * description: when used will use the value to suffix the names of all converged objects

## Tags
1. Network
1. VPC
1. Private Subnet

## Categories
1. Network



## Diagram
![diagram](https://raw.githubusercontent.com/CloudCoreo/vpc-private-only/master/images/diagram.png "Private VPC across 3 subnets")


## Icon


