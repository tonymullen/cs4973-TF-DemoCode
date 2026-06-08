resource "local_file" "pet" {
    filename =  "${path.cwd}/pets.txt"
    content = "I love pets!"
}
