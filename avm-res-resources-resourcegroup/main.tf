module "avm-res-resources-resourcegroup" {
  source           = "Azure/avm-res-resources-resourcegroup/azurerm"
  version          = "0.2.1"
  location         = var.location
  name             = var.name
  enable_telemetry = false
  lock = {
    kind = "CanNotDelete"
  }
  role_assignments = var.role_assignments
  tags             = var.tags
}
