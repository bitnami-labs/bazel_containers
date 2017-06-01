load("@io_bazel_rules_docker//docker:docker.bzl", "docker_build")

docker_build(
    name = "barfoo",
    # References docker_pull from WORKSPACE (above)
    base = "@bitnami_minideb//image:image.tar",
    files = [":foobar/foobar.py"],
    cmd = ["foobar.py"]
)
