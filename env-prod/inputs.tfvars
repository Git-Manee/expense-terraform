env = "prod"

vpc_cidr                = "10.255.0.0/16"
public_subnets          = ["10.255.0.0/24", "10.255.1.0/24"]
private_subnets         = ["10.255.2.0/24", "10.255.3.0/24"]
azs                     = ["us-east-1a", "us-east-1b"]
default_vpc_id          = "vpc-03273bb6c2971797c"
default_vpc_cidr        = "172.31.0.0/16"
default_route_table_id  = "rtb-009da092ef2d40283"
account_no              = "145692951343"
bastion_node_cidr       = ["172.31.16.152/32"]
desired_capacity        = 2
max_size                = 10
min_size                = 2
instance_class          = "db.t3.medium"