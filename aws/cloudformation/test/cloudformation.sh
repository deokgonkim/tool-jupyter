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
"LdapDnTemplate=$LDAP_DN_TEMPLATE" \
"VpcId=$VPC_ID" \
"PublicSubnet1=$PUBLIC_SUBNET1" \
"PublicSubnet2=$PUBLIC_SUBNET2" \
"PrivateSubnet1=$PRIVATE_SUBNET1" \
"PrivateSubnet2=$PRIVATE_SUBNET2" \
"SecurityGroupVpc=$SECURITY_GROUP_VPC" \
"SecurityGroupDeveloper=$SECURITY_GROUP_DEVELOPER" \
"CertificateArn=$CERTIFICATE_ARN" \
"HostedZoneName=$HOSTED_ZONE_NAME"
