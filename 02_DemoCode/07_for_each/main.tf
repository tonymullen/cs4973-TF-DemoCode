resource "local_file" "pets" {
    filename = "${path.cwd}/${each.value}"
    content  = "I love my pet!"
    for_each = toset(var.filename)
}
