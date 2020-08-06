# main.tf

resource "random_pet" "server" {
  keepers = {
    uuid = "${uuid()}"
  }

  length = "${var.pet_name_length}"
  prefix = "${var.ATLAS_WORKSPACE_NAME}"
}

variable "ATLAS_WORKSPACE_NAME" {}
#output "workspace" { value = "${var.ATLAS_WORKSPACE_NAME}" }
