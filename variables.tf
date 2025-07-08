###################################################
#
# VPC SETTINGS
#
###################################################

variable "vpc_zone" {
  description = "(Required) - Зона доступности, в которой будет создан ВМ."
  type = string
}

variable "vpc_subnet_id" {
  description = "(Required) - Подcеть, в которой будет создан GitLab и ВМ."
  type = string
}

###################################################
#
# GITLAB SETTINGS
#
###################################################

variable "gitlab_domain" {
  description = <<EOF
    (Required) - Домен, по которому будет доступен GitLab инстанс.
      Например, если вы указали: "mydomain", то GitLab будет доступен на домене: "mydomain.gitlab.yandexlcoud.net".
  EOF
  type        = string
}

variable "gitlab_admin_login" {
  description = "(Required) - Логин админа в GitLab инстансе."
  type        = string
}

variable "gitlab_admin_email" {
  description = "(Required) - Адрес электронной почты админа."
  type        = string
}

variable "gitlab_name" {
  description = "(Optional) - Имя GitLab инстанса."
  type        = string
  default     = "gitlab"
}


###################################################
#
# RUNNER SETTINGS
#
###################################################

variable "ssh_public_key" {
  description = "(Required) - Публичный SSH-ключ для удаленного доступа к ВМ."
  type        = string
}
