FROM openjdk:8

RUN \
  curl -L -o sbt-1.0.3.deb http://dl.bintray.com/sbt/debian/sbt-1.0.3.deb && \
  dpkg -i sbt-1.0.3.deb && \
  rm sbt-1.0.3.deb && \
  apt-get update && \
  apt-get install sbt

WORKDIR /Conejo
ADD . /Conejo

CMD sbt run
