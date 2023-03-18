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

resource "github_repository" "this" {
  name         = "gtd-django"
  description  = "trict GTD app written by Django"
  visibility   = "public"
  has_projects = true
  has_issues   = true
}
