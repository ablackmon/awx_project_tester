FROM python:3
MAINTAINER ablackmon@andrewblackmon.com

RUN pip3 install yamllint ansible-lint black pylint
