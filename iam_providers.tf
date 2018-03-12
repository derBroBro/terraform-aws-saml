resource "aws_iam_saml_provider" "saml" {
  name                   = "${var.provider_name}"
  saml_metadata_document = "${replace(file(var.provider_metadata_file),"/\\r/",""}"
}
