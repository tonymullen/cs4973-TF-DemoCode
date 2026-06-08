resource "local_file" "pet" {
    filename = "${path.cwd}/${var.filename}"
    content  = var.content
}

resource "random_pet" "my-pet" {
    prefix = "Mr"
    separator = "."
    length = "2"
}
