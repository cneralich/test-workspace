# main.tf

resource "random_pet" "server" {
  /*keepers = {
    uuid = "${uuid()}"
  }*/

  length = var.pet_name_length
  prefix = split("/",var.TFC_WORKSPACE_SLUG)[0]
}

# variables.tf

variable "pet_name_length" {
  type    = string
  default = "1"
}

variable "prefix" {
  default = "test"
}

# output.tf

output "server" {
  value = random_pet.server.id
}

#variable "ATLAS_WORKSPACE_NAME" {}
variable "TFC_WORKSPACE_SLUG" {}
