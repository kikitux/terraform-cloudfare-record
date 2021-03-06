variable "email" {}
variable "token" {}

variable "domain" {}

variable "record" {
  type = "map"

  default = {
    "kitchen-test" = "127.0.0.1"
  }
}

variable "type" {
  default = "A"
}

variable "ttl" {
  default = 3600
}

module "cloudfare" {
  source = "../"

  email = "${var.email}"
  token = "${var.token}"

  domain = "${var.domain}"
  record = "${var.record}"
  type   = "${var.type}"
  ttl    = "${var.ttl}"
}
