# Asciinema Docker image

This image allows you to record with Asciinema.
It is based on Debian Jessie.

## Config

Preferably create an Asciinema config file,
which you can mount onto the container.

```
[api]
token = <your api token>
```

More information for creating an Asciinema config file can be found [here](https://asciinema.org/docs/config)

##Usage

Without local config.

```
docker run -it --rm tomverelst/asciinema
```

With a local config file.

```
docker run -it --rm -v <local-config-folder>:/asciinema tomverelst/asciinema
```

By default, you will go into a bash terminal.
This allows you to prepare your recording before you start,
like installing packages with `apt-get`.
Start recording with `asciinema rec`.
