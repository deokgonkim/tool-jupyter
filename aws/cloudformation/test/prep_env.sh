#!/bin/bash

echo "LDAP_HOST(ex. localhost) : "; read LDAP_HOST; echo "export LDAP_HOST=${LDAP_HOST}" > .env
echo "LDAP_PORT(ex. 636) : "; read LDAP_PORT; echo "export LDAP_PORT=${LDAP_PORT}" >> .env
echo "LDAP_DN_TEMPLATE(ex. uid={username},ou=Users,dc=dgkim,dc=net) : "; read LDAP_DN_TEMPLATE; echo "export LDAP_DN_TEMPLATE=${LDAP_DN_TEMPLATE}" >> .env

echo "VPC ID : "; read VPC_ID; echo "export VPC_ID=${VPC_ID}" >> .env

echo "PublicSubnet 1 : "; read PUBLIC_SUBNET1; echo "export PUBLIC_SUBNET1=${PUBLIC_SUBNET1}" >> .env
echo "PublicSubnet 2 : "; read PUBLIC_SUBNET2; echo "export PUBLIC_SUBNET2=${PUBLIC_SUBNET2}" >> .env

echo "Security Group VPC : "; read SECURITY_GROUP_VPC; echo "export SECURITY_GROUP_VPC=${SECURITY_GROUP_VPC}" >> .env
echo "Security Group Developer : "; read SECURITY_GROUP_DEVELOPER; echo "export SECURITY_GROUP_DEVELOPER=${SECURITY_GROUP_DEVELOPER}" >> .env

echo "Certificate Arn : "; read CERTIFICATE_ARN; echo "export CERTIFICATE_ARN=${CERTIFICATE_ARN}" >> .env

echo "HostedZoneName : "; read HOSTED_ZONE_NAME; echo "export HOSTED_ZONE_NAME=${HOSTED_ZONE_NAME}" >> .env
