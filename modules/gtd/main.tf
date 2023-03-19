resource "github_repository" "this" {
  name         = "gtd-${lower(var.technology)}"
  description  = "Strict GTD app written by ${var.technology}"
  visibility   = "public"
  has_projects = true
  has_issues   = true
}

resource "github_issue" "add_scaffold" {
  repository = github_repository.this.name
  title      = "Add ${var.technology} scaffold"
  body       = ""
}

resource "github_issue" "add_capture" {
  repository = github_repository.this.name
  title      = "Add feature 'capture'"
  body       = ""
}
