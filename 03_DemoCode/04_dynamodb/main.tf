resource "aws_dynamodb_table" "books" {
    name     = "Books"
    hash_key = "ISBN"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
        name = "ISBN"
        type = "S"
    }
}

resource "aws_dynamodb_table_item" "book-items" {
    # We need to convert the list of objects to a map
    # where the key is unique by first doing the for
    # loop to convert the list to a map keyed on isbn
    for_each = { for book in local.books : book.isbn => book }
    table_name  = aws_dynamodb_table.books.name
    hash_key    = aws_dynamodb_table.books.hash_key
    item = <<EOF
{
    "Title": {"S": "${each.value.title}"},
    "Author": {"S": "${each.value.author}"},
    "Year": {"N": "${each.value.year}"},
    "ISBN": {"S": "${each.key}"}
}
    EOF
}
