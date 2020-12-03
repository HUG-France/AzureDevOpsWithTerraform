
resource "azuredevops_git_repository" "repository" {
  project_id = azuredevops_project.project_demo.id
  name       = "Repo Meetup"
  initialization {
    init_type = "Clean"
  }
}

