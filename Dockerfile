FROM alpine

# Add testing repository
RUN echo https://dl-cdn.alpinelinux.org/alpine/edge/testing/ >> /etc/apk/repositories
# Install Go & ko.build
RUN apk update && apk add go ko

# Set Docker Hub by default
ENV KO_DOCKER_REPO=docker.io

ENTRYPOINT ["ko"]
