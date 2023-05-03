
resource "null_resource"  "fruits" {

  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo Fruit Name -  ${each.key} - ${each.value}"
    //command = "echo   ${length(var.fruits)}"
  }
}

variable "fruits" {
  default = {
    apple =10
    orange=100
    banana=200
  }
}

resource "null_resource"  "fruits2" {

  for_each = var.fruits2

  provisioner "local-exec" {
    command = "echo Fruit Name -  ${each.key} - ${each.value["count"]}"
    //command = "echo   ${length(var.fruits)}"
  }
}

variable "fruits2" {
  default = {
    apple {
      name = "apple"
      count=10
  }
    orange {
      name = "orange"
      count= 100
    }

    banana {
      name = "banana"
      count = 200
    }
  }
}