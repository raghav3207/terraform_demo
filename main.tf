# Generate random IDs (like instance IDs)
resource "random_pet" "instance" {
  count = var.instance_count

  length = 2
}

# Create local files representing "instances"
resource "local_file" "instance_file" {
  count = var.instance_count

  filename = "${path.module}/output/${var.app_name}-${count.index}.txt"

  content = <<EOT
App Name   : ${var.app_name}
Environment: ${var.environment}
Instance   : ${count.index}
ID         : ${random_pet.instance[count.index].id}
EOT
}
