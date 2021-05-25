#!/bin/bash

echo "LDAP_HOST(ex. localhost) : "; read LDAP_HOST; echo "export LDAP_HOST=${LDAP_HOST}" > .env
echo "LDAP_PORT(ex. 636) : "; read LDAP_PORT; echo "export LDAP_PORT=${LDAP_PORT}" >> .env
echo "LDAP_DN_TEMPLATE(ex. uid={username},ou=Users,dc=dgkim,dc=net) : "; read LDAP_DN_TEMPLATE; echo "export LDAP_DN_TEMPLATE=${LDAP_DN_TEMPLATE}" >> .env
