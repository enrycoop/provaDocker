FROM debian AS BASE

RUN apt-get -y update && apt-get -y install python

RUN useradd -ms /bin/bash test10

COPY ./test.txt .

ENV TEST=test

RUN echo $TEST

RUN ["echo", "$TEST"]

CMD cat test.txt