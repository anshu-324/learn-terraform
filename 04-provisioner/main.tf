resource "null_resource" "test" {
  provisioner "local-exec" {
    command = <<EOF
    echo hello world
    ls
    pwd
    EOF
  }
}