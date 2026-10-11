variable "dataform_repositories" {
  description = <<EOT
Map of dataform_repositories, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - display_name
    - kms_key_name
    - labels
    - npmrc_environment_variables_secret_version
    - project
    - region
    - service_account
    - git_remote_settings (block):
        - authentication_token_secret_version (optional)
        - default_branch (required)
        - git_repository_link (optional)
        - ssh_authentication_config (optional, block):
            - host_public_key (required)
            - user_private_key_secret_version (required)
        - url (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - workspace_compilation_overrides (block):
        - default_database (optional)
        - schema_suffix (optional)
        - table_prefix (optional)
EOT

  type = map(object({
    name                                       = string
    deletion_policy                            = optional(string)
    display_name                               = optional(string)
    kms_key_name                               = optional(string)
    labels                                     = optional(map(string))
    npmrc_environment_variables_secret_version = optional(string)
    project                                    = optional(string)
    region                                     = optional(string)
    service_account                            = optional(string)
    git_remote_settings = optional(object({
      authentication_token_secret_version = optional(string)
      default_branch                      = string
      git_repository_link                 = optional(string)
      ssh_authentication_config = optional(object({
        host_public_key                 = string
        user_private_key_secret_version = string
      }))
      url = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    workspace_compilation_overrides = optional(object({
      default_database = optional(string)
      schema_suffix    = optional(string)
      table_prefix     = optional(string)
    }))
  }))
}

