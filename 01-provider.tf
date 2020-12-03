terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
    }
  }
  required_version = ">= 0.1.0"
}


provider "azuredevops" {
  org_service_url       = "https://dev.azure.com/BookLabs/"
  #personal_access_token = "xxxxxxxxxxxx" or env var AZDO_PERSONAL_ACCESS_TOKEN
}