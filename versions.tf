terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.16.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6.0"
    }
    utils = {
      source  = "cloudposse/utils"
      version = ">= 0.17.0"
    }
  }
}
