variable "ex" {
  default = {
    x = 100
    x1 = 500
    y = 200
  }
}


resource "null_resource" "test" {
  for_each = var.ex
}

