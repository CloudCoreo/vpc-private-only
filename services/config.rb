######################################################################
## variables
##   PRIVATE_ROUTE_NAME
##   PRIVATE_SUBNET_NAME
##   VPC_NAME
##
## NOTE
##   a VPC must already exist
##   a NAT instance must already be running for route association
##   this means that a public vpc subnet must already be created
######################################################################

######################################################################
## make sure there is a vpc for the subnets to be contained in
######################################################################
coreo_aws_vpc_vpc "${VPC_NAME}" do
  action :find_or_create
  cidr "${VPC_OCTETS}/16"
  internet_gateway true
end


######################################################################
## create a routetable for the public subnet, route everything
## to the internet gateway
## NOTE:
##    You must NOT use action :sustain to maintain routes with the 
##    HA-NAT becuase cloudcoreo will revert ha-nat.py changes.
######################################################################
coreo_aws_vpc_routetable "${PRIVATE_ROUTE_NAME}" do
  action :create
  vpc "${VPC_NAME}"
  number_of_tables 3
end


######################################################################
## number_of_zones
##   cidr will be split up among all zones specified in "number_of_zones"
## percent_of_vpc_allocated
##   split, but use only this percentage of the entire vpc range
######################################################################
coreo_aws_vpc_subnet "${PRIVATE_SUBNET_NAME}" do
  action :sustain
  number_of_zones 3
  percent_of_vpc_allocated 50
  route_table "${PRIVATE_ROUTE_NAME}"
  vpc "${VPC_NAME}"
end