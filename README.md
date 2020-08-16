# cpp-on-docker

Basic utility Docker images for C++ development and CI

## Available images

### [`clang-format`](clang-format.Dockerfile)

[![Publish on DockerHub][dockerhub-badge]](https://hub.docker.com/repository/docker/ggabriel96/clang-format)

#### Usage

`cd` into your project and run:

```sh
docker run --rm -v $(pwd):/workspace/ -w /workspace/ ggabriel96/clang-format:latest <options> <files>
```

Where:

- `<options>` are options to be passed to `clang-format`, e.g. `--dry-run --verbose -Werror`
- `<files>` are the files to be checked or formatted, e.g. `$(find . -name '*.hpp')`

Conversely, if you want to get into the container, run:

```sh
docker run --rm -it -v $(pwd):/workspace/ -w /workspace/ --entrypoint sh ggabriel96/clang-format:latest
```

Note the `-it` flags and the `--entrypoint` option.

[dockerhub-badge]: https://github.com/ggabriel96/cpp-on-docker/workflows/Publish%20on%20DockerHub/badge.svg?branch=main
