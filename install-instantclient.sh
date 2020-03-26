#!/usr/bin/env bash
# 2020-03-26 Updated to latest oracle v19.6 instantclient
unzip instantclient-basic-linux.x64-19.6.0.0.0dbru.zip -d /opt/oracle
unzip instantclient-sdk-linux.x64-19.6.0.0.0dbru.zip -d /opt/oracle
#unzip instantclient-basic-linux.x64-12.1.0.2.0.zip -d /opt/oracle
#unzip instantclient-sdk-linux.x64-12.1.0.2.0.zip -d /opt/oracle
mv /opt/oracle/instantclient_19_6 /opt/oracle/instantclient
#ln -s /opt/oracle/instantclient/libclntsh.so.19.1 /opt/oracle/instantclient/libclntsh.so
#ln -s /opt/oracle/instantclient/libocci.so.19.1 /opt/oracle/instantclient/libocci.so

export ORACLE_HOME="/opt/oracle/instantclient"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME

export OCI_HOME="/opt/oracle/instantclient"
export OCI_LIB_DIR="/opt/oracle/instantclient"
export OCI_INCLUDE_DIR="/opt/oracle/instantclient/sdk/include"
