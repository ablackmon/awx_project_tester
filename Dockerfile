FROM python:3
MAINTAINER ablackmon@andrewblackmon.com

RUN pip3 install yamllint ansible-lint black pylint

RUN groupadd testergroup && useradd -m -g testergroup -s /bin/bash tester
RUN mkdir -p /home/tester/

WORKDIR /home/tester

RUN chown -R flask:flaskgroup /home/tester

USER tester
