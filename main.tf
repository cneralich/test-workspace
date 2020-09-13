# main.tf

resource "random_pet" "server" {
  keepers = {
    uuid = "${uuid()}"
  }

  length = "${var.pet_name_length}"
  #prefix = "${var.ATLAS_ADDRESS}"
}

#variable "ATLAS_ADDRESS" {}
# output "workspace" { value = "${var.ATLAS_WORKSPACE_NAME}" }
