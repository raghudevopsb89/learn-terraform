variable "x" {
  default = {
    a = 100
    b = 200
    c = 300
  }
}

output "xval" {
  value = [for k,v in var.x: v ]
}

output "xmap" {
  value = {for k,v in var.x: "${k}1" => v }
}

