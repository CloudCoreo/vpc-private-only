cloudcoreo-vpc-private
======================

This [CloudCoreo](http://www.cloudcoreo.com) repository will add private subnets to an existing public-subnet-only VPC.

<h3>OVERRIDE REQUIRED VARIABLES</h3>
* <b>VPC_NAME:</b>
  * required: true
  * description: this is the name of your vpc as defined by your [CloudCoreo](http://www.cloudcoreo.com) setup
* <b>NAT_NAME:</b>
  * required: true
  * description: this is the name of your NAT as defined by your [CloudCoreo](http://www.cloudcoreo.com) setup

<h3>OVERRIDE OPTIONAL VARIABLES</h3>
* <b>PRIVATE_SUBNET_NAME:</b>
  * required: true
  * description: the [CloudCoreo](http://www.cloudcoreo.com) name of the private vpc subnets
  * default: my-private-subnet
* <b>PRIVATE_ROUTE_NAME:</b>
  * required: true
  * description: the name to give to the private route
  * default: my-private-route