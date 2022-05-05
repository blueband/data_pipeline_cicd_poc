
#     # An example resource that does nothing.
# resource "null_resource" "test_example" {
#   triggers = {
#     value = "A example resource that does nothing!"
#   }
# }

module "compute" {
  name         = var.machine_name
  machine_type = var.wkstation_machine_type
  zone         = var.zone
  desired_status = var.desired_status
  image = var.os_image

}