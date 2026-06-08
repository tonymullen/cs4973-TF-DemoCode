resource "local_file" "cat" {
    filename = "${path.cwd}/cat.txt"
    content = "My cat's name is Slinky!"
}
