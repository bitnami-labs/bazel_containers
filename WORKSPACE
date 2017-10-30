git_repository(
    name = "io_bazel_rules_docker",
    remote = "https://github.com/bazelbuild/rules_docker.git",
    tag = "v0.3.0",
)

git_repository(
    name = "distroless_rules",
    remote = "https://github.com/googlecloudplatform/distroless.git",
    commit = "4a20649aac319b2ee2f9c058c6a100784904ce7d"
)

git_repository(
    name = "io_bazel_rules_python",
    remote = "https://github.com/bazelbuild/rules_python.git",
    commit = "63cdc8f29b6e6ff517744756cc67cf05577ae724",
)

# Only needed for PIP support:
load("@io_bazel_rules_python//python:pip.bzl",
     "pip_repositories",
     "pip_import")

pip_repositories()

load(
  "@io_bazel_rules_docker//container:container.bzl",
  "container_pull",
  "container_image",
  container_repositories = "repositories",
)

container_repositories()

container_pull(
    name = "bitnami_minideb",
    registry ="index.docker.io",
    repository = "bitnami/minideb-extras",
    tag = "jessie",
)

load(
    "@distroless_rules//package_manager:package_manager.bzl",
    "package_manager_repositories",
    "dpkg_src",
    "dpkg_list",
)

package_manager_repositories()

dpkg_src(
    name = "debian_jessie",
    arch = "amd64",
    distro = "jessie",
    sha256 = "142cceae78a1343e66a0d27f1b142c406243d7940f626972c2c39ef71499ce61",
    snapshot = "20170821T035341Z",
    url = "http://snapshot.debian.org/archive",
)

dpkg_src(
    name = "debian_jessie_backports",
    arch = "amd64",
    distro = "jessie-backports",
    sha256 = "eba769f0a0bcaffbb82a8b61d4a9c8a0a3299d5111a68daeaf7e50cc0f76e0ab",
    snapshot = "20170821T035341Z",
    url = "http://snapshot.debian.org/archive",
)

dpkg_list(
    name = "package_bundle",
    packages = [
        #python
        "libpython2.7-minimal",
        "python2.7-minimal",
        "libpython2.7-stdlib",
        "python-pip",

    ],
    sources = [
        "@debian_jessie//file:Packages.json",
        "@debian_jessie_backports//file:Packages.json",
    ],
)

load(
    "@io_bazel_rules_docker//python:image.bzl",
    _py_image_repos = "repositories",
)

_py_image_repos()


pip_import(
    name = "flask_import",
    requirements = "//flask:requirements.txt",
)

load(
    "@flask_import//:requirements.bzl",
    _flask_install = "pip_install",
)

_flask_install()

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
    name = "libjemalloc",
    url = "http://ftp.debian.org/debian/pool/main/j/jemalloc/libjemalloc1_3.6.0-9.1_amd64.deb",
)

http_file(
    name = "libncurses",
    url = "http://ftp.debian.org/debian/pool/main/n/ncurses/ncurses-bin_6.0+20170408-1_amd64.deb",
)

http_file(
    name = "nginx_bitnami",
    sha256 ="0564f400f06ae1889a19fceb76dcda411edc0216dfd9c341cea46bde4a076ce5",
    url = "https://downloads.bitnami.com/files/stacksmith/nginx-1.12.0-1-linux-x64-debian-8.tar.gz",
)

http_file(
    name = "mariadb_bitnami",
    sha256 ="67a92982a422d8d45d6ccf75a87b3f3ac1b7a1637e77196dd9759230c6789dfe",
    url = "https://downloads.bitnami.com/files/stacksmith/mariadb-10.1.24-0-linux-x64-debian-8.tar.gz",
)
