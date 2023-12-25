terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  #environmental variable can be set
}

variable "zone_id" {
  #environmental variable can be set
}

variable "doamin" {
    default = "var.your_domain_name"
}

resource "cloudflare_record" "www" {
    zone_id = var.zone_id
    name    = "www"
    value   = "you_A_record_ip"
    type    = "A"
    proxied = true
}
