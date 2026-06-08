resource "local_file" "pets" {
    filename = "${path.cwd}/pets.txt"
    content  = "My pet's name is ${data.local_file.dog.content}"
}

data "local_file" "dog" {
    filename = "${path.cwd}/dog.txt"
}
