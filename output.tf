output "id" {
  value       = "${join("", aws_elasticache_replication_group.default.*.id)}"
  description = "Redis cluster id"
}

output "security_group_id" {
  value       = "${join("", aws_security_group.default.*.id)}"
  description = "Security group id"
}

output "port" {
  value       = "${var.port}"
  description = "Redis port"
}

output "host" {
  value       = "${module.dns.hostname}"
  description = "Redis host"
}

output "configuration_endpoint_address" {
  value       = "${join("", aws_elasticache_replication_group.default.*.configuration_endpoint_address)}"
  description = "Configuration Endpoint Address"
}

output "primary_endpoint_address" {
  value       = "${join("", aws_elasticache_replication_group.default.*.primary_endpoint_address)}"
  description = "Primary Endpoint Address"
}
