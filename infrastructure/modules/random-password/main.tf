terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

resource "random_password" "example" {
  length  = var.length
  special = var.include_special
}

output "generated_password" {
  value     = random_password.example.result
  sensitive = true
}

variable "length" {
  type    = number
  default = 16
}

variable "include_special" {
  type    = bool
  default = true
}
