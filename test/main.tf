variable "email" {}
variable "token" {}

variable "domain" {}

variable "name" {
  default = "kitchen-test"
}

variable "value" {
  default = "127.0.0.1"
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
  name   = "${var.name}"
  value  = "${var.value}"
  type   = "${var.type}"
  ttl    = "${var.ttl}"
}
