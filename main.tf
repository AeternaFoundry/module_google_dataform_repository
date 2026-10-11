resource "google_dataform_repository" "dataform_repositories" {
  for_each = var.dataform_repositories

  name                                       = each.value.name
  deletion_policy                            = each.value.deletion_policy
  display_name                               = each.value.display_name
  kms_key_name                               = each.value.kms_key_name
  labels                                     = each.value.labels
  npmrc_environment_variables_secret_version = each.value.npmrc_environment_variables_secret_version
  project                                    = each.value.project
  region                                     = each.value.region
  service_account                            = each.value.service_account

  dynamic "git_remote_settings" {
    for_each = each.value.git_remote_settings != null ? [each.value.git_remote_settings] : []
    content {
      authentication_token_secret_version = git_remote_settings.value.authentication_token_secret_version
      default_branch                      = git_remote_settings.value.default_branch
      git_repository_link                 = git_remote_settings.value.git_repository_link
      dynamic "ssh_authentication_config" {
        for_each = git_remote_settings.value.ssh_authentication_config != null ? [git_remote_settings.value.ssh_authentication_config] : []
        content {
          host_public_key                 = ssh_authentication_config.value.host_public_key
          user_private_key_secret_version = ssh_authentication_config.value.user_private_key_secret_version
        }
      }
      url = git_remote_settings.value.url
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "workspace_compilation_overrides" {
    for_each = each.value.workspace_compilation_overrides != null ? [each.value.workspace_compilation_overrides] : []
    content {
      default_database = workspace_compilation_overrides.value.default_database
      schema_suffix    = workspace_compilation_overrides.value.schema_suffix
      table_prefix     = workspace_compilation_overrides.value.table_prefix
    }
  }
}

