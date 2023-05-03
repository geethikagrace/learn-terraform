


resource "null_resource" "fruits" {
 for_each = var.fruits

    command = "echo Fruit Name -  ${each.valu}"
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
