provider "azurerm" {

  features {}
}

provider "aws" {
  # profile = "terraform"
  region = var.aws_region
}

module "aws" {
  source      = "./aws"
  bucket_name = var.bucket_name
  tags        = var.tags
}

module "azure" {
  source      = "./azure"
  bucket_name = var.bucket_name
  tags        = var.tags
  rg          = var.azure_rg
  location    = var.azure_location
}
