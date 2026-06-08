variable "project-raydeen-users" {
     type = map(string)
     default = {
          "lee"     = "admin",
          "mei"     = "admin",
          "cassie"  = "admin",
          "ram"     = "read",
          "buzz"    = "read",
          "juniper" = "read"
     }
}
