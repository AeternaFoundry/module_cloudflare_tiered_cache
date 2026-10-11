resource "cloudflare_tiered_cache" "tiered_caches" {
  for_each = var.tiered_caches

  value   = each.value.value
  zone_id = each.value.zone_id
}

