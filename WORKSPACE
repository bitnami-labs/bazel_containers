git_repository(
    name = "io_bazel_rules_docker",
    remote = "https://github.com/bazelbuild/rules_docker.git",
    tag = "v0.0.1",
)

load(
  "@io_bazel_rules_docker//docker:docker.bzl",
  "docker_repositories",
  "docker_build",
  "docker_pull",
)

docker_repositories()

docker_pull(
    name = "bitnami_minideb",
    registry ="index.docker.io",
    repository = "bitnami/minideb",
    tag = "jessie",
)

http_file(
    name = "glibc",
    sha256 = "bdf12aa461f2960251292c9dbfa2702d65105555b12cb36c6ac9bf8bea10b382",
    url = "http://deb.debian.org/debian/pool/main/g/glibc/libc6_2.19-18+deb8u9_amd64.deb",
)

http_file(
    name = "libpcre3",
    url = "http://deb.debian.org/debian/pool/main/p/pcre3/libpcre3_8.39-3_amd64.deb",
)

http_file(
    name = "libssl",
    url = "http://deb.debian.org/debian/pool/main/o/openssl/libssl1.1-udeb_1.1.0e-2_amd64.udeb",
)

http_file(
    name = "zlib1g",
    url = "http://deb.debian.org/debian/pool/main/z/zlib/zlib1g_1.2.8.dfsg-5_amd64.deb",
)

http_file(
    name = "nginx_bitnami",
    sha256 ="0564f400f06ae1889a19fceb76dcda411edc0216dfd9c341cea46bde4a076ce5",
    url = "https://downloads.bitnami.com/files/stacksmith/nginx-1.12.0-1-linux-x64-debian-8.tar.gz",
)
