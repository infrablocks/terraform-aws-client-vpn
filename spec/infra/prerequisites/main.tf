module "base_network" {
  source  = "infrablocks/base-networking/aws"
  version = "0.7.0"

  region = "${var.region}"
  vpc_cidr = "${var.vpc_cidr}"
  availability_zones = "${var.availability_zones}"

  component = "${var.component}"
  deployment_identifier = "${var.deployment_identifier}"

  include_lifecycle_events = "no"
  include_route_53_zone_association = "no"
}
