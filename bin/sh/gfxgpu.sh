#!/bin/bash

echo "disabling bumblebee daemon"
systemctl stop bumblebeed
systemctl disable bumblebeed

echo "switching graphics driver (proprietary Nvidia driver)"
optimus-manager --switch nvidia
