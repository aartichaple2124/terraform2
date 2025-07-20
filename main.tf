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
      vm_size = "Standard_B4ms"
    }
    mongodb = {
      name = "mongodb"
      vm_size = "Standard_B4ms"
    }

    catalogue = {
      name = "catalogue"
      vm_size = "Standard_B4ms"
    }

    user = {
      name = "user"
      vm_size = "Standard_B4ms"
    }

    cart = {
      name = "cart"
      vm_size = "Standard B2s"
    }

    mysql = {
      name = "mysql"
      vm_size = "Standard_B1ms"
    }

    shipping = {
      name = "shipping"
      vm_size = "Standard_B1ms"
    }

    payment = {
      name = "payment"
      vm_size = "Standard_B1ms"
    }

    redis = {
      name = "redis"
      vm_size = "Standard_B1ms"
    }

    dispatch = {
      name = "dispatch"
      vm_size = "Standard_B1ms"
    }

    rabbitmq = {
      name = "rabbitmq"
      vm_size = "Standard_B1ms"
    }
  }
}