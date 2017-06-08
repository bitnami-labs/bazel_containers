load("@io_bazel_rules_docker//docker:docker.bzl", "docker_build")

docker_build(
    name = "mariadb",
    labels = {"maintainer" : "Bitnami <containers@bitnami.com>"},
    base = "@bitnami_minideb//image:image.tar",
    debs = [
        "@glibc//file",
        "@libssl//file",
        "@zlib1g//file",
        "@libjemalloc//file",
        "@libncurses//file",
    ],
    env = {
        "BITNAMI_APP_NAME" : "mariadb",
        "BITNAMI_IMAGE_VERSION" : "1.12.0-r3",
        "ALLOW_EMPTY_PASSWORD" : "no",
        "MARIADB_DATABASE" : "",
        "MARIADB_MASTER_HOST" : "",
        "MARIADB_MASTER_PORT_NUMBER" : "",
        "MARIADB_MASTER_ROOT_PASSWORD" : "",
        "MARIADB_MASTER_ROOT_USER" : "",
        "MARIADB_PASSWORD" : "",
        "MARIADB_PORT_NUMBER" : "3306",
        "MARIADB_REPLICATION_MODE" : "",
        "MARIADB_REPLICATION_PASSWORD" : "",
        "MARIADB_REPLICATION_USER" : "",
        "MARIADB_ROOT_PASSWORD" : "",
        "MARIADB_ROOT_USER" : "root",
        "MARIADB_USER" : "",
        "PATH" : "/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/opt/bitnami/nami/bin:/opt/bitnami/mariadb/bin:/opt/bitnami/mariadb/sbin:$PATH",
    },
    ports = ["3306"],
    volumes = ["/bitnami/mariadb"],

    entrypoint = ["/entrypoint.sh"],
    cmd = ["/run.sh"],

    files = ["entrypoint.sh", 
             "run.sh", 
             "init.sh",
             "mariadb-inputs.json",
             "@mariadb_bitnami//file"],
)
