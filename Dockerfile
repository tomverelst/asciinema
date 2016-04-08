FROM debian:jessie

MAINTAINER tomverelst <tomverelst@gmail.com>

# Define en_US.
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LC_MESSAGES en_US.UTF-8
ENV LC_ALL  en_US.UTF-8

RUN apt-get update -qq

RUN apt-get install -y curl

RUN curl -sL -o install https://asciinema.org/install

RUN chmod +x ./install

RUN ./install

RUN mkdir -p /root/.config/asciinema && ln -s /root/.config/asciinema /asciinema

VOLUME /asciinema

# Print Asciinema help upon login
RUN echo "asciinema help" >> /root/.bashrc

ENTRYPOINT ["bash"]
