#!/bin/bash

echo "enabling bumblebee daemon"
systemctl enable bumblebeed

echo "switching graphics driver (CPU hybrid graphics driver)"
optimus-manager --switch intel

