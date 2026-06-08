resource "local_file" "pet" {
    filename = "${path.cwd}/pets.txt"
    content = "I love my pet!"
    file_permission = "0766"
}
