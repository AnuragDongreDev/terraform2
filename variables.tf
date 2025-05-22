variable "grafana_url" {
  default = "http://localhost:3000"
}

variable "grafana_auth" {
  default = "admin:admin"
}

variable "dashboard_json_file" {
  default = "dashboard.json"
}
