FROM alpine:latest

RUN apk update && apk add libheif-tools exiv2

WORKDIR /dusky

COPY ./metadata.xmp metadata.xmp
COPY ./dusky dusky

RUN chmod +x dusky

ENTRYPOINT ["./dusky"]
