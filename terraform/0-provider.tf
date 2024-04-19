provider "aws" {

  region = "us-east-1"
  access_key ="AKIAUCJWTGCYJZ4NYTPQ"
  secret_key ="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"

}

variable "cluster_name" {
  default = "ist"
}

variable "cluster_version" {
  default = "1.25"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6.0"
    }
  }
}
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
