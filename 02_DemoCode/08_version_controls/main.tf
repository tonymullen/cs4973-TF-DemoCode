terraform {
    required_providers {
        local = {
            source = "hashicorp/local"
            version = "> 2.0.0, < 2.5.0, != 2.4.0"
        }
    }
}

resource "local_file" "pets" {
    filename = "${path.cwd}/pet.txt"
    content  = "I love my pet!"
}
