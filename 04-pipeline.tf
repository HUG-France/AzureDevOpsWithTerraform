resource "azuredevops_build_definition" "pipeline" {
  project_id = azuredevops_project.project_demo.id
  name       = "Pipeline demo"
  path       = "\\Demo"

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.repository.id
    branch_name = azuredevops_git_repository.repository.default_branch
    yml_path    = "pipeline.yaml"
  }

  variable {
    name  = "System.debug"
    value = true
  }

}