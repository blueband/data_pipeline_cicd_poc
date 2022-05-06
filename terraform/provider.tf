# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    #         # The name of your Terraform Cloud organization.
    organization = "bluemoonltd"
    #
    #         # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "gh-action-setup"
    }
  }
}

provider "google" {
  project = var.projectid
  region  = var.region
  zone    = var.zone
}
# 