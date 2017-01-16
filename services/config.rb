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
coreo_aws_vpc_vpc "${VPC_NAME}${SUFFIX}" do
  action :sustain
  cidr "${VPC_OCTETS}/16"
  internet_gateway true
  region "${REGION}"
  tags ${VPC_TAGS}
end


######################################################################
## create a routetable for the public subnet, route everything
## to the internet gateway
## NOTE:
##    You must NOT use action :sustain to maintain routes with the 
##    HA-NAT becuase cloudcoreo will revert ha-nat.py changes.
######################################################################
coreo_aws_vpc_routetable "${PRIVATE_ROUTE_NAME}${SUFFIX}" do
  action :create
  vpc "${VPC_NAME}${SUFFIX}"
  number_of_tables 2
  region "${REGION}"
end


######################################################################
## number_of_zones
##   cidr will be split up among all zones specified in "number_of_zones"
## percent_of_vpc_allocated
##   split, but use only this percentage of the entire vpc range
######################################################################
coreo_aws_vpc_subnet "${PRIVATE_SUBNET_NAME}${SUFFIX}" do
  action :sustain
  number_of_zones 2
  percent_of_vpc_allocated 50
  route_table "${PRIVATE_ROUTE_NAME}${SUFFIX}"
  vpc "${VPC_NAME}${SUFFIX}"
  region "${REGION}"
end
