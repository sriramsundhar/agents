FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine

ENV PATH="/usr/local/sbt/bin:$PATH"

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
  apk update && \
  apk add openjdk11 && \
  apk add jq && \
  apk add docker docker-compose && \
  mkdir -p "/usr/local/sbt" && \
  wget -qO - --no-check-certificate "https://github.com/sbt/sbt/releases/download/v1.4.9/sbt-1.4.9.tgz" | \
  tar xz -C /usr/local/sbt --strip-components=1 && \
  mkdir -p ~/.ssh && \
  chmod 700 ~/.ssh && \
  cd /tmp && \
  sbt sbtVersion