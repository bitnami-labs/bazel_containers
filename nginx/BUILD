load("@io_bazel_rules_docker//docker:docker.bzl", "docker_build")

docker_build(
    name = "nginx",
    labels = {"maintainer" : "Bitnami <containers@bitnami.com>"},
    base = "@bitnami_minideb//image:image.tar",
    debs = [
        "@glibc//file",
    ],
    symlinks = {
        "/opt/bitnami/nginx/html" : "/app",
    },
    env = {
        "BITNAMI_APP_NAME" : "nginx",
        "BITNAMI_IMAGE_VERSION" : "1.12.0-r3",
        "NGINX_HTTPS_PORT_NUMBER" : "443",
        "NGINX_HTTP_PORT_NUMBER" : "80",
        "PATH" : "/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/opt/bitnami/nginx/sbin/$PATH",
    },
    ports = ["80", "443"],
    volumes = ["/bitnami/nginx"],
    workdir = "/app",
    cmd = ["foobar.py"],
    files = ["foobar.py", "@nginx_bitnami//file"],
)
