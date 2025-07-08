data "yandex_compute_image" "boot_image" {
  family = "container-optimized-image"
}

resource "yandex_compute_instance" "runner" {
  name     = "gitlab-runner"
  hostname = "gitlab-runner"

  platform_id = "standard-v3"

  zone = var.vpc_zone

  resources {
    cores         = 4
    memory        = 4
    core_fraction = 100
  }

  boot_disk {
    mode = "READ_WRITE"
    initialize_params {
      image_id = data.yandex_compute_image.boot_image.id
      size     = 15
      type     = "network-hdd"
    }
  }

  network_interface {
    nat       = true
    subnet_id = var.vpc_subnet_id
  }

  scheduling_policy {
    preemptible = true
  }

  metadata = {
    user-data = (
      format("#cloud-config\npackage_update: true\nusers:\n  - name: %s\n    shell: /bin/bash\n    sudo: 'ALL=(ALL:ALL) NOPASSWD: ALL'\n    ssh_authorized_keys:\n      - %s\n%s",
        "gitlab-runner", var.ssh_public_key,
        format("runcmd:\n  - |\n    curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | bash\n    apt-get install gitlab-runner -yq")
      )
    )
  }
}
