# Download the docker images
resource "docker_image" "image_id" {
  name = "${var.image}"
}
