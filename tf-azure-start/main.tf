# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.75.0"
    }
  }

  required_version = ">= 1.5.7"
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

data "azurerm_client_config" "current" {}

# Create a resource group
resource "azurerm_resource_group" "rg-wtf" {
  name     = "rg-with-terraform"
  location = "West Europe"
}

