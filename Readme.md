Terraform backend
1. remote
2. cloud provider such as gcp, aws, azure

if you Using Terraform Cloud
your backend will be set to remote, follow below instruction,

Instruction Avaialble at https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference: 
 Using Terraform Cloud
Place your credentials in a Terraform Cloud environment variable:

Create an environment variable called `GOOGLE_CREDENTIALS` in your Terraform Cloud workspace.
Remove the newline characters from your JSON key file and then paste the credentials into the environment variable value field. You can use the tr command to strip newline characters. cat key.json | tr -s '\n' ' '
Mark the variable as Sensitive and click Save variable.
All runs within the workspace will use the GOOGLE_CREDENTIALS variable to authenticate with Google Cloud Platform.
