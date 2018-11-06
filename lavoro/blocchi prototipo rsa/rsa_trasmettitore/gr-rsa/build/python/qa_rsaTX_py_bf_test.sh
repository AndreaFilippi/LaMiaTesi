#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/python
export PATH=/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/build/python:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH
export PYTHONPATH=/home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/build/swig:$PYTHONPATH
/usr/bin/python2 /home/lino/Desktop/tirocinio/RSA/rsa_trasmettitore/gr-rsa/python/qa_rsaTX_py_bf.py 
