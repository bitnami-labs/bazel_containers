load("@io_bazel_rules_docker//python:image.bzl", "py_image")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@flask_import//:requirements.bzl", "requirement")

py_image(
    name = "flask_py",
	srcs = ["app.py"],
	deps = [
	        requirement("flask")
	],
	base = "//python:pybit",
	main = "app.py",
)

container_image(
    name = "flask",
    labels = {"maintainer" : "Bitnami <containers@bitnami.com>"},
    base = ":flask_py",

    env = {
        "BITNAMI_APP_NAME" : "flask",
        "PATH" : "/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:$PATH",
    },
    ports = ["5000"],
)
