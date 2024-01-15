
locals {
    Owner = var.business_unit
    env = var.environment
    common-tags = {
        Name = "${local.Owner}-${local.env}"
        Onwer = "Soni"
        
    }
}