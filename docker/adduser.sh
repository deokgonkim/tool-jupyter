#!/bin/bash

# This custom script is to preserve UID and GID of user.
# without this. jupyter will create home directory every time with different uid
# Related configuration: jupyterhub_config.py
# c.LocalLDAPCreateUsers.add_user_cmd = ['adduser', '-q', '–gecos', '', '–disabled-password']

(
export BASE_DN=$(ldapsearch -x -H ldap://${LDAP_HOST} -s base + | grep namingContexts | sed s/namingContexts:\ //)

for _USERNAME in $@; do :; done

export RESULT=$(ldapsearch -x -H ldap://${LDAP_HOST} -b $BASE_DN uid=$_USERNAME)
# echo "$RESULT"

export _UID=$(echo "$RESULT" | grep ^uidNumber: | sed s/uidNumber:\ //)
export _GID=$(echo "$RESULT" | grep ^gidNumber: | sed s/gidNumber:\ //)

CMD="groupadd --gid $_GID admin"
echo $CMD && $CMD

CMD="adduser --uid $_UID --gid $_GID $@"

echo $CMD && $CMD
) 2>&1 | tee /home/adduser.log
