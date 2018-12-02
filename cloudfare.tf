variable "email" {}
variable "token" {}

provider "cloudflare" {
  email = "${var.email}"
  token = "${var.token}"
}
