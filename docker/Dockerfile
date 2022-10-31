FROM jupyterhub/jupyterhub

RUN apt-get update && apt-get -y update
# RUN apt-get install -y build-essential python3.6 python3-pip python3-dev mysql-client libmysqlclient-dev
RUN apt-get install -y build-essential python3-dev mysql-client libmysqlclient-dev gettext-base ldap-utils
# RUN pip3 -q install pip --upgrade

RUN mkdir app
WORKDIR app
COPY requirements.txt .

RUN pip3 install -r requirements.txt
RUN pip3 install jupyter

# RUN pip3 install jupyterhub-ldapauthenticator
RUN pip3 install jupyterhub-ldapcreateusers

COPY jupyterhub_config.py /etc/jupyterhub/
COPY entrypoint.sh /
COPY adduser.sh /

# RUN apt-get install -y ldap-auth-client ldap-auth-config libnss-ldapd libpam-ldap
# COPY ./etc/*.conf /etc/
# RUN pam-auth-update --enable mkhomedir

# CMD ["jupyter", "notebook", "--port=8080", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

ENTRYPOINT ["/entrypoint.sh"]
