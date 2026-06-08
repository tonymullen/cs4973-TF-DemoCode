resource "local_file" "pet" {
    filename = "${path.cwd}/${var.filename}"
    content  = "I love ${random_pet.my-pet.id}!"
}

resource "random_pet" "my-pet" {
    prefix = "Mr"
    separator = "."
    length = "2"
}

resource "local_file" "foo" {
    filename = "${path.cwd}/foo.txt"
    content = "This file has no dependencies"
}
