FROM ubuntu:xenial

RUN apt-get -y update && apt-get -y upgrade

ADD support/scripts /tmp/scripts
RUN chmod +x /tmp/scripts/*

RUN /tmp/scripts/packages.sh

# Set up Oracle SQL client libraries
ADD support/oracle_client_rpms /tmp/oracle_client_rpms
RUN /tmp/scripts/oracle_client_rpms.sh

RUN apt-get clean
RUN rm -r /tmp/scripts && rm -r /tmp/oracle_client_rpms