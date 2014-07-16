Introduction
---

Docker configuration for a go language related stack. This will allow you to create an ubuntu image with go to spin up a bare bones go stack.

Build Docker Image
---
    docker build -t <yourname>/docker-go .

This will build a local Docker image that uses the base ubuntu 14.04 image, downloads and compiles go and sets your environment path. It will also set your working folder.

Run New Go Container
---
    docker run -d -P <yourname>/docker-go

This will initialize a new container.

Container Port
---
Coming soon.

Test
---
Coming soon.

Todo
----
Compile go app.

Configure ports for rest service related needs.

Configure dependencies.
