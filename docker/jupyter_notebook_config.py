import os

# https://stackoverflow.com/questions/55060753/how-do-i-set-a-default-umask-in-jupyterhub
if 'NB_UMASK' in os.environ:
    os.umask(int(os.environ['NB_UMASK'], 8))
