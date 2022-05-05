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

#     # An example resource that does nothing.
resource "null_resource" "test_example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
