FROM debian AS BASE

RUN apt-get -y update && apt-get -y install iproute2

RUN useradd -ms /bin/bash test