nginx-consul-template
===
Docker images to have nginx and the consul template installed


# Supported tags and respective Dockerfile links
* [`v0.1` (v0.1/Dockerfile)](https://github.com/yeasy/docker-nginx-consul-template/blob/ecb36d054d48d137fb78acf23a590772feb99c24/Dockerfile)

* [`v0.10, latest` (latest/Dockerfile)](https://github.com/yeasy/docker-nginx-consul-template/blob/master/Dockerfile)

For more information about this image and its history, please see the relevant manifest file in the [`yeasy/docker-nginx-consul-template` GitHub repo](https://github.com/yeasy/docker-nginx-consul-template).

# What is docker-nginx-consul-template?
Docker image with nginx and a consul template to update its configuration file from `consul` dynamically. The image is built based on [docker-loadbalancer](https://github.com/bellycard/docker-loadbalancer).

# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/nginx-consul-template/](https://registry.hub.docker.com/u/yeasy/nginx-consul-template/).


## In Dockerfile
```sh
FROM yeasy/nginx-consul-template:latest
```

## Local Run
```sh
$ docker run --rm -it yeasy/nginx-consul-template:latest bash
```

# Which image is based on?
The image is based on `nginx:1.7`.

# What has been changed?

## add consul-template
Add the consul-template as backend service to listen to `consul`.

## Update nginx startup
Use `runit` to handle all started services.

# Supported Docker versions

This image is officially supported on Docker version 1.7.1.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/yeasy/docker-nginx-consul-template/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/yeasy/docker-nginx-consul-template/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/yeasy/docker-nginx-consul-template/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.

