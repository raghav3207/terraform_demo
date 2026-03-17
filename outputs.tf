output "instance_ids" {
  value = random_pet.instance[*].id
}

output "files_created" {
  value = local_file.instance_file[*].filename
}
