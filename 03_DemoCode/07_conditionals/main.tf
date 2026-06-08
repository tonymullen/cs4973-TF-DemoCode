resource "random_password" "password-generator" {
    length = var.length < 8 ? 8 : var.length
}

output password {
    // To output the literal password, we can do
    value = nonsensitive(random_password.password-generator.result)

    // Alternately,
    // value = random_password.password-generator.result
    // sensitive = true

    // In this case, we can view this directly using
    // tofu/terraform -raw password
}
