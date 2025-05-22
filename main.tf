terraform {
  required_version = ">= 1.2"

  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "~> 1.0"
    }
  }
}

provider "grafana" {
  url  = var.grafana_url # will need to be changed later
  auth = var.grafana_auth #dirty but fine as of now
}

resource "grafana_dashboard" "main" {
  config_json = file(var.dashboard_json_file)
}
