#!/bin/sh
set -e

echo "Checking for restore data..."
if [ -f "/restore/dump_all.sql" ]; then
    echo "Restoring data from /restore/dump_all.sql"
    psql -f /restore/dump_all.sql postgres
    echo "Restore done."
fi
