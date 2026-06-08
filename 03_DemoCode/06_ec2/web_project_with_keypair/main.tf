resource "aws_instance" "webserver" {
    ami = "ami-0edab43b6fa892279"
    instance_type = "t2.micro"
    tags = {
        Name = "webserver"
        Description = "An Nginx web server on Ubuntu"
    }
    user_data = file("install_nginx.sh")
    key_name = aws_key_pair.web.id
    vpc_security_group_ids = [
        aws_security_group.ssh-access.id
    ]
    provisioner "local-exec" {
        command = "echo ${aws_instance.webserver.public_ip} >> ./ip_address.txt"
    }
}

resource "aws_key_pair" "web" {
    # must be an existing key
    public_key = file("${path.cwd}/web.pub")
}

resource "aws_security_group" "ssh-access" {
    name = "ssh-access"
    description = "Allow access from the Internet"
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

output publicip {
    value   = aws_instance.webserver.public_ip
}
