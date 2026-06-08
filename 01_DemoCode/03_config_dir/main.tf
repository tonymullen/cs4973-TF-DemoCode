resource "local_file" "dog" {
    filename = "${path.cwd}/dog.txt"
    content = "My dog's name is bongo!"
}
