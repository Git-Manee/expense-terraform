resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo Hello World - ${var.env} Environment"
  }
}
variable "env" {}

terraform {
  backend "s3" {}
}