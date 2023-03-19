resource "github_repository" "this" {
  name         = "gtd-django"
  description  = "trict GTD app written by Django"
  visibility   = "public"
  has_projects = true
  has_issues   = true
}

resource "github_issue" "django_scaffold" {
  repository = github_repository.this.name
  title      = "Add Django scaffold"
  body       = ""
}

resource "github_issue" "add_capture" {
  repository = github_repository.this.name
  title      = "Add feature 'capture'"
  body       = ""
}
