
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
