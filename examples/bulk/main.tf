terraform {
  required_providers {
    aci = {
      #source =  "local/providers/aci"
      source =  "ciscodevnet/aci"
      #version = "1.0.0"
    }
  }
  required_version = ">= 0.13"
}

provider "aci" {
  username = "admin"
  password = "Redmoon0"
  url      = "http://10.0.2.214"
  insecure = true
}
