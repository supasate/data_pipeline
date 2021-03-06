FROM spotify/kafka

RUN apt-get clean && apt-get update && apt-get install -y apt-transport-https
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt-get clean && apt-get update && apt-get install -y sbt
RUN sbt update
