# Setup instructions

1. Get an API key from Hetzner (LarsG, Jørgen, John)
2. Generate a SSH key (command in [reference](#command-reference))
3. Download Dependencies:

    ```sh
    terraform -chdir=infrastructure init
    ````

4. Apply configuration (note the returned IPv4 Address)

    ```sh
    terraform -chdir=infrastructure apply
    ```

5. Wait a minute, then visit the IP address

  Available Services:
  - \<ip>[:8080](): Traefik Dashboard
  - \<ip>[:8081](): Database Admin UI

## Debug server

1. SSH into server

  ```sh
  ssh -i <path-to-identity-file> root@<ip>
  ```
2. View the logs under `/var/log`
3. Use [journalctl](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html) to view [systemd](https://systemd.io/) logs

    ```sh
    journalctl
    ```

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

- Build a local container from a Dockerfile

  ```sh
  docker build --tag <some-name> .
  ```

  Example:
  ```sh
  docker build --tag dotnet-app .
  docker run --rm --publish 8080:8080 dotnet-app
  ```

- Start a compose file (and rebuild images)

  ```sh
  docker compose up --build
  ```

- Clean up created compose resources

  ```sh
  docker compose down
  ```

- Generate SSH Key

  ```sh
  ssh-keygen -t ed25519 -b 4096 -C "" -P "" -f ssh-identity
  ```

## Sketches

![Container Introduction](/docs/sketches.excalidraw.png)
![Docker Compose Application](/docs/compose-stack.excalidraw.png)

## Reference

- Development Tools
  - [Docker Desktop](https://www.docker.com/products/docker-desktop/)
  - [OrbStack](https://www.docker.com/products/docker-desktop/)
- Container Registry
  - [Docker Hub, default and primary](https://hub.docker.com/)
  - [GitHub Container Registry (GHCR)](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry)
- [Containerize a .NET App](https://learn.microsoft.com/en-us/dotnet/core/docker/build-container?tabs=windows&pivots=dotnet-9-0)
