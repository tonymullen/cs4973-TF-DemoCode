resource "local_file" "pet" {
    filename = "${path.cwd}/${var.filename}"
    content = var.content
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}
