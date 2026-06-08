resource "local_file" "pet" {
    filename = "${path.cwd}/pets.txt"
    content = "I love my pet!"
}

resource "random_pet" "my-pet" {
    prefix = "Dr"
    separator = "."
    length= "1"
}
