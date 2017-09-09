# Copied from CentOS vagrantfile, might need to be adjusted
# problems: https://help.ubuntu.com/community/Oracle%20Instant%20Client

alien -i /tmp/oracle_client_rpms/oracle12/oracle-instantclient12.1-basic-12.1.0.2.0-1.x86_64.rpm
alien -i /tmp/oracle_client_rpms/oracle12/oracle-instantclient12.1-devel-12.1.0.2.0-1.x86_64.rpm
alien -i /tmp/oracle_client_rpms/oracle12/oracle-instantclient12.1-sqlplus-12.1.0.2.0-1.x86_64.rpm