


resource "null_resource" "fruits" {
  count = length(var.fruits)

    //command = "echo Fruit Name -  ${var.fruits[count.index]}"
    command = "echo   ${length(var.fruits)}"
  }

}

variable "fruits" {
  default = {
    apple =10
    orange=100
    banana=200
  }
}
