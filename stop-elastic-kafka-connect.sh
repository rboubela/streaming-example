#!/bin/bash

echo "stopping kafka connect"
kill `ps -ef | grep ConnectStandalone | grep -v grep | awk '{ print $2 }'`

