terraform {
    required_providers {
        docker = { source = "kreuzwerker/docker" }
    }
}

provider "docker" {
    host = "unix:///var/run/docker.sock"
}

resource "docker_image" "webapp_img" {
    name = "nginx:alpine"
}

resource "docker_container" "webapp" {
    name = "my-app-${var.env_name}"
    image = docker_image.webapp_img.image_id
    ports {
        internal = 80
        external = var.host_port
    }
}