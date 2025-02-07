FROM mjmckay.jfrog.io/app-docker/myalpine:latest

WORKDIR /app

RUN wget --no-cache https://raw.githubusercontent.com/mjmckay/legendary-giggle/main/helloworld.c

RUN gcc -o hello helloworld.c

CMD ["./hello"]
