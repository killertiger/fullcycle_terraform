terraform {
    required_version = ">= 0.13.1"
    required_providers {
        # aws = ">=3.54.0"
        # local = ">=2.1.0"
        aws = ">=5.48.0"
        local = ">=2.5.1"
    }
}

provider "aws" {
    region = "us-east-1"
}