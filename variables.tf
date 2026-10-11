variable "tiered_caches" {
  description = <<EOT
Map of tiered_caches, attributes below
Required:
    - value
    - zone_id
EOT

  type = map(object({
    value   = string
    zone_id = string
  }))
}

