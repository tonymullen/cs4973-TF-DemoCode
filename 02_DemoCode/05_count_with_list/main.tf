resource "local_file" "pets" {
    filename = "${path.cwd}/${var.filename[count.index]}"
    content  = "I love my pet!"
    count    = 3
}
