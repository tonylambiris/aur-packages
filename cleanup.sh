#!/bin/bash

sudo find . -type d -name src -exec rm -rf "{}" \;
sudo find . -type d -name pkg -exec rm -rf "{}" \;

sudo find . -name '*.zip' -delete
sudo find . -name '*.gz' -delete
sudo find . -name '*.bz2' -delete
sudo find . -name '*.xz' -delete
