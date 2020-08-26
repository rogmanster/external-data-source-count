provider "aws" {
}

module "instances" {
  source = "./modules"

  count          = data.external.boolean.result["boolean"] == "true" ? 1 : 0
  name           = "rchao"
  instance_type  = "t2.micro"
  instance_count = "1"
  tags           = { Owner = "rchao@hashicorp.com", Region = "NAWESTSTRAT", TTL = "3" , Purpose = "Demo"}
}

data "external" "boolean" {
  program = ["${path.module}/boolean.sh"]
}
