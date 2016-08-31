FROM openfrontier/gerrit
MAINTAINER Zhongdi Wang <wangmuy@gmail.com>

COPY gerrit-entrypoint.sh /
COPY gerrit-entrypoint1.sh /

RUN mv /gerrit-start.sh /gerrit-start2.sh
COPY gerrit-start.sh /


ENTRYPOINT ["/gerrit-entrypoint1.sh"]

CMD ["/gerrit-start.sh"]
