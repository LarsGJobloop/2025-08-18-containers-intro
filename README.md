## Command reference

- Verify docker is setup and the Container Runtime is running

    ```sh
    docker run --rm hello-world
    ```

- Test out a web server

    ```sh
    docker run --name some-nginx -p 8080:80 nginx
    ```

- Shut down a running process in the terminal (send a SIGINT signal)

    ```sh
    Ctrl + C
    ```

## Sketches

![Sketch from lecture](/docs/sketches.excalidraw.png)

## Reference

- Development Tools
  - [Docker Desktop](https://www.docker.com/products/docker-desktop/)
  - [OrbStack](https://www.docker.com/products/docker-desktop/)
- Container Registry
  - [Docker Hub, default and primary](https://hub.docker.com/)
  - [GitHub Container Registry (GHCR)](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry)
- [Containerize a .NET App](https://learn.microsoft.com/en-us/dotnet/core/docker/build-container?tabs=windows&pivots=dotnet-9-0)
