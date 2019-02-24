#!/bin/bash
# This script is used for iteractive dialog, to ask user for some configuration details
# during the installation process.
# In normal workflow it should be invoked just once, during the initial installation.
# As a result of this script you should have a file `setup/single_node/vars` file.
#
# IMPORTANT: every time we add some environment variable, that is required either for
# billing or openvpn container, we should add a corresponding variable name to
# `setup/single_node/var_names` file.

FILENAME="var_names"
IFS=$'\n'

# TODO: we may also receive some argument here, to detect that user may want to override
# variables that were defined before.
# The argument should come from parent `install.sh` script.

echo "We need some configuration information about your system"

touch vars
echo "" > vars

for next in `cat $FILENAME`; do
  echo "'$next':"
  read value
  echo "export $next=$value" >> vars
done
