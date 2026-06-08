resource "local_file" "pet" {
    filename = "${path.cwd}/${var.filename}"
    content = "My favorite pet is Dr.normal.stag"
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}
