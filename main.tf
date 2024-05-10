terraform {
    required_version = ">= 0.13.1"
    required_providers {
        # aws = ">=3.54.0"
        # local = ">=2.1.0"
        aws = ">=5.48.0"
        local = ">=2.5.1"
    }
    backend "s3" {
        bucket = "myfcbucket2024"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"
}

module "new-vpc" {
    source = "./modules/vpc"
    prefix = var.prefix
    vpc_cidr_block = var.vpc_cidr_block
}

module "eks" {
    source = "./modules/eks"
    prefix = var.prefix
    vpc_id = module.new-vpc.vpc_id
    cluster_name = var.cluster_name
    retention_days = var.retention_days
    max_size = var.max_size
    min_size = var.min_size
    desired_size = var.desired_size
    subnet_ids = module.new-vpc.subnet_ids
}