terraform {
  required_version = ">= 1.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "project_info" {
  filename = "${path.module}/project.txt"
  content  = "Terraform CI Validation Project"
}
