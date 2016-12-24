#
# add most customization with following url
# http://stackoverflow.com/questions/26598738/how-to-create-user-database-in-script-for-docker-postgres
# add init.sql
#

FROM postgres:9.5
ENV POSTGRES_USER demo
ENV POSTGRES_DB blog_demo

ARG POSTGRES_PASSWORD=password
ENV POSTGRES_PASSWORD ${POSTGRES_PASSWORD}

ADD setupRCs.sh /docker-entrypoint-initdb.d/setupRCs.sh
RUN chmod 755 /docker-entrypoint-initdb.d/setupRCs.sh