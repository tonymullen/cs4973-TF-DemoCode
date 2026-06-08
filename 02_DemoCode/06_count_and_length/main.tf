resource "local_file" "pets" {
    filename = "${path.cwd}/${var.filename[count.index]}"
    content  = "I love my pet!"
    count    = length(var.filename)
}

output "pets" {
    value = local_file.pets
    sensitive = true
}
