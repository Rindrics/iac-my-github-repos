terraform {
  backend "s3" {
    bucket         = "terraform-github-repos"
    key            = "gtd-django.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "terraform-state-lock"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~>5.18"
    }
  }
}

provider "github" {
  token = var.GITHUB_TOKEN
}

module "gtd_django" {
  source = "../../modules/gtd"
}
