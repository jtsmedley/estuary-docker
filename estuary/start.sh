#/bin/bash
echo "Hostname: $ESTUARY_HOSTNAME"
FILE=/usr/src/estuary/data/estuary.db
if test -f "$FILE"; then
    echo "$FILE exists."
    /usr/src/estuary/estuary --hostname $ESTUARY_HOSTNAME
else
    echo "$FILE does not exist."
    /usr/src/estuary/estuary --hostname $ESTUARY_HOSTNAME setup
fi