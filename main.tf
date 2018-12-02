variable "domain" {}
variable "name" {}
variable "value" {}
variable "type" {}
variable "ttl" {}

# Add a record to the domain
resource "cloudflare_record" "record" {
  domain = "${var.domain}"
  name   = "${var.name}"
  value  = "${var.value}"
  type   = "${var.type}"
  ttl    = "${var.ttl}"
}
