resource "aws_iam_user" "users" {
    for_each = var.project-raydeen-users
    name = each.key
}

resource "aws_iam_user_policy_attachment" "anita-admin-access" {
    for_each = var.project-raydeen-users
    user = each.key
    policy_arn = each.value == "admin" ? aws_iam_policy.admin-user.arn : aws_iam_policy.read-user.arn
}

# Two different ways to use policy JSON code
# in resource blocks

# Inline with EOF delimiters
resource "aws_iam_policy" "admin-user" {
    name = "AdminUsers"
    policy  = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
    EOF
}

# Read in from a file
resource "aws_iam_policy" "read-user" {
    name = "ReadUsers"
    policy  = file("s3_read_only.json")
}
