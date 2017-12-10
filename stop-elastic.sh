#!/bin/bash

echo "stopping elasticsearch"
kill `pgrep -f elastic`

