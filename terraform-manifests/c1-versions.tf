# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }
  }
}

# # Terraform State Storage to Azure Storage Container
#   backend "azurerm" {
#     resource_group_name   = "rsg-certanity-iac-terraform-manual"
#     storage_account_name  = "terraformstate1124"
#     container_name        = "tfstatefiles"
#     key                   = "project-1-eastus2-terraform.tfstate"
#   }
# }

provider "azurerm" {
  features {}

  subscription_id = var.azure_subscription_id
  tenant_id       = var.azure_tenant_id
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
}
