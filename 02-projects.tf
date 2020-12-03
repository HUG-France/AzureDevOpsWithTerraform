
resource "azuredevops_project" "project_demo" {
  name = "DemoMeetup"
  visibility   = "private"

  version_control    = "Git"
  work_item_template = "Agile"

  features = {
    "testplans" = "disabled"
    "artifacts" = "disabled"
  }

}
