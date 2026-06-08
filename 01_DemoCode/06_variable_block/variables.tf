variable "filename" {
    default = "pets.txt"
    type = string
    description = "Name of the pets text file"
}

variable "content" {
    default = "My pet is great!"
    type = string
    description = "Content of the pets text file"
}

variable "prefix" {
    default = "Dr"
    type = string
    description = "Prefix for the pet name"
}

variable "separator" {
    default = "."
    type = string
    description = "Separator between prefix and generated pet name"
}

variable "length" {
    default = "2"
    type = number
    description = "Word length of generated pet name"
}
