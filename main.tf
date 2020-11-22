variable "zone_id" {}

variable "record" {
  type = map
}

variable "priority" {
  default = "0"
}

variable "type" {}
variable "ttl" {}

terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
  }
  required_version = ">= 0.13"
}

# Add a record to the domain
resource "cloudflare_record" "record" {
  zone_id   = var.zone_id
  priority = var.priority
  ttl      = var.ttl
  type     = var.type
  for_each = var.record
  name     = each.key
  value    = each.value
}
