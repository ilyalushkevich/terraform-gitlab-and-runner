output "connect_to_runner_vm" {
  description = "Подключение к ВМ раннера через SSH."
  value = format("ssh %s@%s",
    "gitlab-runner", yandex_compute_instance.runner.network_interface[0].nat_ip_address
  )
}

output "gitlab_domain" {
  description = "Домен GitLab инстанса."
  value       = format("https://%s", yandex_gitlab_instance.gitlab.domain)
}
