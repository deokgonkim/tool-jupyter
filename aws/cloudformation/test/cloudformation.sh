#!/bin/bash

if [ -f .env ]; then
    source .env
else
    echo "Prepare .env file before deploying"
    exit 1
fi


aws cloudformation \
deploy \
--template-file cloudformation.yml \
--stack-name jupyter-test \
--capabilities CAPABILITY_NAMED_IAM \
--parameter-overrides \
"LdapHost=$LDAP_HOST" \
"LdapPort=$LDAP_PORT" \
"LdapDnTemplate=$LDAP_DN_TEMPLATE"
