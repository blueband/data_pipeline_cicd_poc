# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    #         # The name of your Terraform Cloud organization.
    organization = "${TF_organization}"
    #
    #         # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "gh-action-setup"
    }
  }
}

provider "google" {
  project = "${secrets.TF_PROJECTID}"
  region  = var.region
  zone    = var.zone
}