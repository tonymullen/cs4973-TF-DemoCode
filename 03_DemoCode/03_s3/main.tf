resource "aws_s3_bucket" "finance" {
    bucket = "finance-234325abcde555"
    tags = {
        Description = "Financial records"
    }
}

resource "aws_s3_object" "finance-2025" {
    content = "${path.cwd}/records-2025.csv"
    key = "records-2025.csv"
    bucket = aws_s3_bucket.finance.id
}

data "aws_iam_group" "finance-data" {
    group_name = "finance-analysts"
}

resource "aws_s3_bucket_policy" "finance-policy" {
    bucket = aws_s3_bucket.finance.id
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "*",
            "Effect": "Allow",
            "Resource": "arn:aws:s3:::${aws_s3_bucket.finance.id}/*",
            "Principal": {
                "AWS": [
                    "${data.aws_iam_group.finance-data.arn}"
                ]
            }
        }
    ]
}
    EOF
}
