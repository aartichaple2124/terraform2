module "component" {
  for_each = var.component
  source = "./resource"
  component = each.value["name"]
  vm_size = each.value["vm_size"]
}


variable "component" {
  default = {

    frontend = {
      name    = "frontend"
      vm_size = "Standard B2s"
    }
  }
}