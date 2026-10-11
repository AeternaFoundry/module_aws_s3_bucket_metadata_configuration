variable "s3_bucket_metadata_configurations" {
  description = <<EOT
Map of s3_bucket_metadata_configurations, attributes below
Required:
    - bucket
Optional:
    - expected_bucket_owner
    - region
    - metadata_configuration (block):
        - inventory_table_configuration (optional, block):
            - configuration_state (required)
            - encryption_configuration (optional, block):
                - kms_key_arn (optional)
                - sse_algorithm (required)
        - journal_table_configuration (optional, block):
            - encryption_configuration (optional, block):
                - kms_key_arn (optional)
                - sse_algorithm (required)
            - record_expiration (optional, block):
                - days (optional)
                - expiration (required)
EOT

  type = map(object({
    bucket                = string
    expected_bucket_owner = optional(string)
    region                = optional(string)
    metadata_configuration = optional(list(object({
      inventory_table_configuration = optional(list(object({
        configuration_state = string
        encryption_configuration = optional(list(object({
          kms_key_arn   = optional(string)
          sse_algorithm = string
        })))
      })))
      journal_table_configuration = optional(list(object({
        encryption_configuration = optional(list(object({
          kms_key_arn   = optional(string)
          sse_algorithm = string
        })))
        record_expiration = optional(list(object({
          days       = optional(number)
          expiration = string
        })))
      })))
    })))
  }))
}

