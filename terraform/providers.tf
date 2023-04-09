

terraform {
  
  # backend "" {
  #   bucket  = "terraform-states"
  #   prefix  = "folder-structure"
  # }
  
  required_providers {
    civo = {
      source = "civo/civo"
      version = "1.0.30"
    }
  }
}

# Configure the Civo Provider
provider "civo" {
  token = var.civo_token
  region = local.region_name
}
