# Pull base image from stock node image.
FROM ubuntu:14.04

# Maintainer
MAINTAINER Robert Schultz <hello@robertschultz.org>

# Add the current working folder as a mapped folder at /usr/src/app
ADD . /usr/src/app

# Set the current working directory to the new mapped folder.
WORKDIR /usr/src/app

# Update apt-get and sources
RUN apt-get update && apt-get -y upgrade

# Install wget, certificates for OpenSSL and compilation tools
RUN apt-get install -y wget ca-certificates build-essential

# Install git to pull down latest code
RUN apt-get install -y git

# Download go
RUN wget --no-verbose http://golang.org/dl/go1.3.src.tar.gz

# Extract package
RUN tar -v -C /usr/local -xzf go1.3.src.tar.gz

# Compile go
RUN cd /usr/local/go/src && ./make.bash --no-clean 2>&1

# Set path of binaries
ENV PATH $PATH:/usr/local/go/bin

# Expose the node.js port to the Docker host.
EXPOSE 3000
