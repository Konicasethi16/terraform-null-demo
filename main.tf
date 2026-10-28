
terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

resource "null_resource" "test" {
  count = 2
}

output "id" {
  value = null_resource.test[*].id
}
