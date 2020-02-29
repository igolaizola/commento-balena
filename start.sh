#!/bin/bash

# Use device public url as commento url
export COMMENTO_ORIGIN=https://${BALENA_DEVICE_UUID}.balena-devices.com
# Launch commento
/commento/commento
