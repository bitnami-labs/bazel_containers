# WIP to build containers with Bazel using [docker rules](https://github.com/bazelbuild/rules_docker)

Install [bazel](https://bazel.build/versions/master/docs/install.html)

## build nginx [WIP]

```
bazel build //nginx:nginx
```

Then check the `bazel-bin` directory.
You will see a script `bazel-bin/nginx/nginx` which will load the docker image.

Then

```
docker run --rm -it bazel/nginx:nginx /bin/bash
```

## TODO

* Grab our debs and get them via `http_file` rule in WORKSPACE
* Figure out why the PATH is not set in the image
* Figure out a way to install our components (i.e `bitnami-pkg` / `nami` or not)

## DOD

Make a build, load the image, access nginx
