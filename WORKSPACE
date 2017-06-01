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
