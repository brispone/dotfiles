#!/bin/bash

DEVICE_NAME="Logitech G403 HERO Gaming Mouse"

# Find the device ID
DEVICE_ID=$(ratbagctl list | grep "$DEVICE_NAME" | awk -F: '{print $1}')

if [ -n "$DEVICE_ID" ]; then
  # Set the DPI to 800
  ratbagctl "$DEVICE_ID" dpi set 800
else
  echo "Device not found."
fi
