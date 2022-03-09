FROM phatblat.jfrog.io/workshop-docker/alpine:latest

RUN apk add --no-cache wget gcc musl-dev # buildkit

WORKDIR /app

RUN wget --no-cache https://raw.githubusercontent.com/mjmckay/legendary-giggle/main/helloworld.c

RUN gcc -o hello helloworld.c

CMD ["./hello"]
