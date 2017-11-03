FROM openjdk:8

RUN \
  curl -L -o sbt-0.13.15.deb http://dl.bintray.com/sbt/debian/sbt-0.13.15.deb && \
  dpkg -i sbt-0.13.15.deb && \
  rm sbt-0.13.15.deb && \
  apt-get update && \
  apt-get install sbt && \
  sbt sbtVersion

WORKDIR /Conejo
ADD . /Conejo

CMD sbt run
