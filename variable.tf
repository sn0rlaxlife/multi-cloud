variable "azure_rg" {
  default = "demoproject"
}

variable "tags" {
  type = map
  default = {
    "puropse" = "presentation"
    "cloud"   = "azure"
  }
}

variable "azure_location" {
  default = "uswest"
}

variable "aws_region" {
  default = "us-west-1"
}
