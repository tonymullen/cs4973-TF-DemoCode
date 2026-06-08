resource "local_file" "pets" {
    filename = "${path.cwd}/pets-${count.index}.txt"
    content  = "I love my pet!"
    count    = 3
}
