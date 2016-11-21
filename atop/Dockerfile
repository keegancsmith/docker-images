FROM alpine:3.4

RUN apk add --no-cache atop

# interactive atop throws a hissy fit if TERM is not set
ENV TERM=xterm

COPY ./entrypoint.sh /

ENTRYPOINT "/entrypoint.sh"
