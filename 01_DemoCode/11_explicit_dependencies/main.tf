resource "local_file" "pet" {
    filename = "${path.cwd}/${var.filename}"
    content = "I love my pet!"

    depends_on = [
        random_pet.my-pet
    ]
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}
