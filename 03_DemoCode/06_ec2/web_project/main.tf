resource "aws_instance" "webserver" {
    ami = "ami-0edab43b6fa892279"
    instance_type = "t2.micro"
    tags = {
        Name = "webserver"
        Description = "An Nginx web server on Ubuntu"
    }
    # Heredoc with <<- allows us
    # to indent. Indented space will
    # be trimmed off (to the leftmost)
    # line beginning
    user_data = <<-EOF
            #!/bin/bash
            sudo apt update
            sudo apt install nginx -y
            sudo systemctl enable nginx
            sudo systemctl start nginx
            EOF
}
