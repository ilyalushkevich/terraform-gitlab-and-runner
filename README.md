## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | = 0.145.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | = 0.145.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_compute_instance.runner](https://registry.terraform.io/providers/yandex-cloud/yandex/0.145.0/docs/resources/compute_instance) | resource |
| [yandex_gitlab_instance.gitlab](https://registry.terraform.io/providers/yandex-cloud/yandex/0.145.0/docs/resources/gitlab_instance) | resource |
| [yandex_compute_image.boot_image](https://registry.terraform.io/providers/yandex-cloud/yandex/0.145.0/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_admin_email"></a> [gitlab\_admin\_email](#input\_gitlab\_admin\_email) | (Required) - Адрес электронной почты админа. | `string` | n/a | yes |
| <a name="input_gitlab_admin_login"></a> [gitlab\_admin\_login](#input\_gitlab\_admin\_login) | (Required) - Логин админа в GitLab инстансе. | `string` | n/a | yes |
| <a name="input_gitlab_domain"></a> [gitlab\_domain](#input\_gitlab\_domain) | (Required) - Домен, по которому будет доступен GitLab инстанс.<br/>      Например, если вы указали: "mydomain", то GitLab будет доступен на домене: "mydomain.gitlab.yandexlcoud.net". | `string` | n/a | yes |
| <a name="input_gitlab_name"></a> [gitlab\_name](#input\_gitlab\_name) | (Optional) - Имя GitLab инстанса. | `string` | `"gitlab"` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | (Required) - Публичный SSH-ключ для удаленного доступа к ВМ. | `string` | n/a | yes |
| <a name="input_vpc_subnet_id"></a> [vpc\_subnet\_id](#input\_vpc\_subnet\_id) | (Required) - Подcеть, в которой будет создан GitLab и ВМ. | `string` | n/a | yes |
| <a name="input_vpc_zone"></a> [vpc\_zone](#input\_vpc\_zone) | (Required) - Зона доступности, в которой будет создан ВМ. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_connect_to_runner_vm"></a> [connect\_to\_runner\_vm](#output\_connect\_to\_runner\_vm) | Подключение к ВМ раннера через SSH. |
| <a name="output_gitlab_domain"></a> [gitlab\_domain](#output\_gitlab\_domain) | Домен GitLab инстанса. |
