#!/bin/bash

# install required pip libraries
# pip install -i https://pip.deokgon.kim/dgkim/stable dgkim-common


# Verify configuration
VARS='$LDAP_HOST:$LDAP_PORT:$LDAP_DN_TEMPLATE'
envsubst "$VARS" < /etc/jupyterhub/jupyterhub_config.py > /tmp/jupyterhub_config.py && cat /tmp/jupyterhub_config.py > /etc/jupyterhub/jupyterhub_config.py && cat /etc/jupyterhub/jupyterhub_config.py

jupyterhub -f /etc/jupyterhub/jupyterhub_config.py

# jupyterhub
