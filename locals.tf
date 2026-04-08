locals {
  sufix = "${var.common_tags["region"]}-${var.common_tags["env"]}-${var.common_tags["project_name"]}"
}

resource "random_string" "s3-suffix" {
  length  = 8
  upper   = false
  numeric  = true
  special = false
}

locals {
  s3-sufix = "${var.common_tags.project_name}-${random_string.s3-suffix.id}"
}