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
docker run --rm -it --entrypoint /bin/bash bazel/nginx:nginx
```

## TODO

* Figure out a way to install our components (i.e `bitnami-pkg` / `nami` or not)

Unzip and `nami unpack` in the entrypoint, ugly useless quick hack


## DOD

Make a build, load the image, access nginx - DONE
