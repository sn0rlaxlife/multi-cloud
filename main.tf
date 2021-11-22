provider "azurerm" {

  features {}
}

provider "aws" {
  # profile = "terraform"
  region = var.aws_region
}

module "aws" {
  source      = "./aws"
}

module "azure" {
  source      = "./azure"
}
