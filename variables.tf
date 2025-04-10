variable "region" {}
variable "machine_type" {}
variable "project_id" {}
variable "gcp_credentials" {
  description = "Base64 encoded GCP credentials JSON"
  type        = string
  sensitive   = true
}
