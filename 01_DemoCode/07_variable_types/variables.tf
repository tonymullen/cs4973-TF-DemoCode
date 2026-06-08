variable "filename" {
    default = "pets.txt"
    type = string
    description = "Name of the pets text file"
}

variable "content" {
    default = {
        statement1 = "My pet is great!"
        statement2 = "My pet is adorable"
        statement3 = "All pets are great!"
    }
    type = map(string)
    description = "Content of the pets text file"
}

variable "prefix" {
    default = ["Dr", "Ms", "Sir", "Little"]
    type = list(string)
    description = "Prefixes for the pet name"
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
