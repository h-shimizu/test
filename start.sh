#!/bin/bash 

SERVICE_PATH=/usr/sbin/service

#----------------------------------------
# Start Any Service
#----------------------------------------
# for NTP
${SERVICE_PATH} ntp start

# for MySQL
${SERVICE_PATH} mysql start

# for Postfix
${SERVICE_PATH} postfix start

# for Zabbix Server
${SERVICE_PATH} zabbix-server start

# for Zabbix Agent
${SERVICE_PATH} zabbix-agent start

# for apache (Need FORGROUND)
/usr/sbin/apache2 -k start -D FOREGROUND 
