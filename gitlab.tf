resource "yandex_gitlab_instance" "gitlab" {
  name                      = var.gitlab_name
  resource_preset_id        = "s2.micro"
  disk_size                 = 30
  admin_login               = var.gitlab_admin_login
  admin_email               = var.gitlab_admin_email
  domain                    = format("%s.gitlab.yandexcloud.net", var.gitlab_domain)
  subnet_id                 = var.vpc_subnet_id
  approval_rules_id         = "NONE"
  backup_retain_period_days = 7
}
