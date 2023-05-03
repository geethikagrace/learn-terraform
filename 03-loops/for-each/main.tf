


resource "null_resource" "fruits" {
 for_each =

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
