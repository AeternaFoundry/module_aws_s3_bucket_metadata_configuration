output "s3_bucket_metadata_configurations_bucket" {
  description = "Map of bucket values across all s3_bucket_metadata_configurations, keyed the same as var.s3_bucket_metadata_configurations"
  value       = { for k, v in aws_s3_bucket_metadata_configuration.s3_bucket_metadata_configurations : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_metadata_configurations_expected_bucket_owner" {
  description = "Map of expected_bucket_owner values across all s3_bucket_metadata_configurations, keyed the same as var.s3_bucket_metadata_configurations"
  value       = { for k, v in aws_s3_bucket_metadata_configuration.s3_bucket_metadata_configurations : k => v.expected_bucket_owner if v.expected_bucket_owner != null && length(v.expected_bucket_owner) > 0 }
}
output "s3_bucket_metadata_configurations_metadata_configuration" {
  description = "Map of metadata_configuration values across all s3_bucket_metadata_configurations, keyed the same as var.s3_bucket_metadata_configurations"
  value       = { for k, v in aws_s3_bucket_metadata_configuration.s3_bucket_metadata_configurations : k => v.metadata_configuration if v.metadata_configuration != null && length(v.metadata_configuration) > 0 }
}
output "s3_bucket_metadata_configurations_region" {
  description = "Map of region values across all s3_bucket_metadata_configurations, keyed the same as var.s3_bucket_metadata_configurations"
  value       = { for k, v in aws_s3_bucket_metadata_configuration.s3_bucket_metadata_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}

