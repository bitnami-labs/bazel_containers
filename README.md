# WIP to build containers with Bazel using [docker rules](https://github.com/bazelbuild/rules_docker)

Install [bazel](https://bazel.build/versions/master/docs/install.html)

## nginx

```
bazel build //nginx:nginx
```

Then load the rootfs as an image

```
./bazel-bin/nginx/nginx
```

Start the image

```
docker run -d -p 80:80 bazel/nginx:nginx
```

To push it to gcr.io:

```
bazel run //nginx:push_nginx
```

## mariadb

```
bazel build //mariadb:mariadb
./bazel-bin/mariadb/mariadb
```

Run the image

```
docker run -d -p 3306:3306 --env ALLOW_EMPTY_PASSWORD=yes bazel/mariadb:mariadb
```


## TODO

* Figure out a way to install our components (i.e `bitnami-pkg` / `nami` or not)

Unzip and `nami unpack` in the entrypoint, ugly useless quick hack

