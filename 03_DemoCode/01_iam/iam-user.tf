resource "aws_iam_user" "users" {
    name = var.project-raydeen-users[count.index]
    count = length(var.project-raydeen-users)
}
