variable "ex" {
  default = {
    x = 100
    y = 200
  }
}


resource "null_resource" "test" {
  for_each = var.ex
}

