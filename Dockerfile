FROM alpine:latest

ARG BUILD_DATE

LABEL org.label-schema.build-date=$BUILD_DATE

RUN apk update \
  && apk upgrade \
  && apk add ruby postfix \
  && gem install tiller

COPY app/ /

CMD ["tiller", "-v"]