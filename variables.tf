variable "elastic_beanstalk_applications" {
  description = <<EOT
Map of elastic_beanstalk_applications, attributes below
Required:
    - name
Optional:
    - description
    - region
    - tags
    - tags_all
    - appversion_lifecycle (block):
        - delete_source_from_s3 (optional)
        - max_age_in_days (optional)
        - max_count (optional)
        - service_role (required)
EOT

  type = map(object({
    name        = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    appversion_lifecycle = optional(object({
      delete_source_from_s3 = optional(bool)
      max_age_in_days       = optional(number)
      max_count             = optional(number)
      service_role          = string
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

