FROM ubuntu:xenial

RUN apt -y update && apt -y upgrade

ADD support/scripts /tmp/scripts
RUN chmod +x /tmp/scripts/*

# Set up Oracle SQL client libraries
ADD support/oracle_client_rpms /tmp/oracle_client_rpms
RUN /tmp/scripts/oracle_client_rpms.sh
RUN echo 'export "LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib"' >> ~/.bashrc