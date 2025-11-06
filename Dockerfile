# Container image that runs your code
FROM ubuntu:24.04

RUN apt update && apt install -y curl sudo wget

COPY entrypoint.sh /entrypoint.sh

RUN chmod 777 entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]