output "tiered_caches_id" {
  description = "Map of id values across all tiered_caches, keyed the same as var.tiered_caches except keys with no id are omitted"
  value       = { for k, v in cloudflare_tiered_cache.tiered_caches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tiered_caches_editable" {
  description = "Map of editable values across all tiered_caches, keyed the same as var.tiered_caches except keys with no editable are omitted"
  value       = { for k, v in cloudflare_tiered_cache.tiered_caches : k => v.editable if v.editable != null }
}
output "tiered_caches_modified_on" {
  description = "Map of modified_on values across all tiered_caches, keyed the same as var.tiered_caches except keys with no modified_on are omitted"
  value       = { for k, v in cloudflare_tiered_cache.tiered_caches : k => v.modified_on if v.modified_on != null && length(v.modified_on) > 0 }
}
output "tiered_caches_value" {
  description = "Map of value values across all tiered_caches, keyed the same as var.tiered_caches except keys with no value are omitted"
  value       = { for k, v in cloudflare_tiered_cache.tiered_caches : k => v.value if v.value != null && length(v.value) > 0 }
}
output "tiered_caches_zone_id" {
  description = "Map of zone_id values across all tiered_caches, keyed the same as var.tiered_caches except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_tiered_cache.tiered_caches : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

