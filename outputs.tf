output "elastic_beanstalk_applications_id" {
  description = "Map of id values across all elastic_beanstalk_applications, keyed the same as var.elastic_beanstalk_applications"
  value       = { for k, v in aws_elastic_beanstalk_application.elastic_beanstalk_applications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elastic_beanstalk_applications_appversion_lifecycle" {
  description = "Map of appversion_lifecycle values across all elastic_beanstalk_applications, keyed the same as var.elastic_beanstalk_applications"
  value       = { for k, v in aws_elastic_beanstalk_application.elastic_beanstalk_applications : k => one(v.appversion_lifecycle) if v.appversion_lifecycle != null && length(v.appversion_lifecycle) > 0 }
}
output "elastic_beanstalk_applications_arn" {
  description = "Map of arn values across all elastic_beanstalk_applications, keyed the same as var.elastic_beanstalk_applications"
  value       = { for k, v in aws_elastic_beanstalk_application.elastic_beanstalk_applications : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "elastic_beanstalk_applications_description" {
  description = "Map of description values across all elastic_beanstalk_applications, keyed the same as var.elastic_beanstalk_applications"
  value       = { for k, v in aws_elastic_beanstalk_application.elastic_beanstalk_applications : k => v.description if v.description != null && length(v.description) > 0 }
}
output "elastic_beanstalk_applications_name" {
  description = "Map of name values across all elastic_beanstalk_applications, keyed the same as var.elastic_beanstalk_applications"
  value       = { for k, v in aws_elastic_beanstalk_application.elastic_beanstalk_applications : k => v.name if v.name != null && length(v.name) > 0 }
}
output "elastic_beanstalk_applications_region" {
  description = "Map of region values across all elastic_beanstalk_applications, keyed the same as var.elastic_beanstalk_applications"
  value       = { for k, v in aws_elastic_beanstalk_application.elastic_beanstalk_applications : k => v.region if v.region != null && length(v.region) > 0 }
}
output "elastic_beanstalk_applications_tags" {
  description = "Map of tags values across all elastic_beanstalk_applications, keyed the same as var.elastic_beanstalk_applications"
  value       = { for k, v in aws_elastic_beanstalk_application.elastic_beanstalk_applications : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "elastic_beanstalk_applications_tags_all" {
  description = "Map of tags_all values across all elastic_beanstalk_applications, keyed the same as var.elastic_beanstalk_applications"
  value       = { for k, v in aws_elastic_beanstalk_application.elastic_beanstalk_applications : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

