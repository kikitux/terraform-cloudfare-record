variable "domain" {}

variable "record" {
  type = "map"
}

variable "priotity" {
  default = 0
}

variable "type" {}
variable "ttl" {}

# Add a record to the domain
resource "cloudflare_record" "record" {
  count   = "${length(var.record)}"
  domain  = "${var.domain}"
  name    = "${element(keys(var.record), count.index)}"
  priotiy = "${var.priority}"
  ttl     = "${var.ttl}"
  type    = "${var.type}"
  value   = "${element(values(var.record), count.index)}"
}
