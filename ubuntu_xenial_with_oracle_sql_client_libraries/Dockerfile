FROM ubuntu:xenial

RUN apt -y update && apt -y upgrade

# GCC, Make, Kernel IO, Curl, Git
RUN apt -y install curl git-core build-essential libaio1

# Alien will convert the Oracle RPMs into debs and install them
RUN apt -y install alien

ADD support/scripts /tmp/scripts
RUN chmod +x /tmp/scripts/*

# Set up Oracle SQL client libraries
ADD support/oracle_client_rpms /tmp/oracle_client_rpms
RUN /tmp/scripts/oracle_client_rpms.sh
RUN echo 'export "LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib"' >> ~/.bashrc

RUN apt clean
RUN rm -r /tmp/scripts
RUN rm -r /tmp/oracle_client_rpms