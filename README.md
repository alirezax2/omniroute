# OmniRoute

## Run with Docker

Build the image from this repository's `Dockerfile`:

```sh
docker build -t omniroute .
```

Create a host directory for persistent OmniRoute data, then start the container:

```sh
mkdir -p ./omniroute-data
docker run -d \
	--name omniroute \
	-p 20128:20128 \
	-v "$(pwd)/omniroute-data:/data/omniroute" \
	-e OMNIROUTE_PUBLIC_BASE_URL=http://localhost:20128 \
	omniroute
```

OmniRoute is available at `http://localhost:20128`. The bind mount keeps its data in `./omniroute-data` when the container is replaced. Set `OMNIROUTE_PUBLIC_BASE_URL` to the public URL you intend to use when deploying behind a domain or reverse proxy.

To inspect startup output or stop the container:

```sh
docker logs -f omniroute
docker stop omniroute
```
