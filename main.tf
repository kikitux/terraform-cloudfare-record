variable "domain" {}

variable "record" {
  type = "map"
}

variable "type" {}
variable "ttl" {}

# Add a record to the domain
resource "cloudflare_record" "record" {
  count  = "${length(var.record)}"
  domain = "${var.domain}"
  name   = "${element(keys(var.record), count.index)}"
  value  = "${element(values(var.record), count.index)}"
  type   = "${var.type}"
  ttl    = "${var.ttl}"
}
