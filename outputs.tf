output "dataform_repositories_id" {
  description = "Map of id values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no id are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataform_repositories_deletion_policy" {
  description = "Map of deletion_policy values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dataform_repositories_display_name" {
  description = "Map of display_name values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no display_name are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dataform_repositories_effective_labels" {
  description = "Map of effective_labels values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no effective_labels are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "dataform_repositories_git_remote_settings" {
  description = "Map of git_remote_settings values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no git_remote_settings are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => one(v.git_remote_settings) if v.git_remote_settings != null && length(v.git_remote_settings) > 0 }
}
output "dataform_repositories_kms_key_name" {
  description = "Map of kms_key_name values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no kms_key_name are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.kms_key_name if v.kms_key_name != null && length(v.kms_key_name) > 0 }
}
output "dataform_repositories_labels" {
  description = "Map of labels values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no labels are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "dataform_repositories_name" {
  description = "Map of name values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no name are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataform_repositories_npmrc_environment_variables_secret_version" {
  description = "Map of npmrc_environment_variables_secret_version values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no npmrc_environment_variables_secret_version are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.npmrc_environment_variables_secret_version if v.npmrc_environment_variables_secret_version != null && length(v.npmrc_environment_variables_secret_version) > 0 }
}
output "dataform_repositories_project" {
  description = "Map of project values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no project are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dataform_repositories_region" {
  description = "Map of region values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no region are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dataform_repositories_service_account" {
  description = "Map of service_account values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no service_account are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.service_account if v.service_account != null && length(v.service_account) > 0 }
}
output "dataform_repositories_terraform_labels" {
  description = "Map of terraform_labels values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no terraform_labels are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "dataform_repositories_workspace_compilation_overrides" {
  description = "Map of workspace_compilation_overrides values across all dataform_repositories, keyed the same as var.dataform_repositories except keys with no workspace_compilation_overrides are omitted"
  value       = { for k, v in google_dataform_repository.dataform_repositories : k => one(v.workspace_compilation_overrides) if v.workspace_compilation_overrides != null && length(v.workspace_compilation_overrides) > 0 }
}

