#!/bin/bash

sudo find . -type d -name src -exec rm -rf "{}" \;
sudo find . -type d -name pkg -exec rm -rf "{}" \;

sudo find . -name '*.zip' -delete
sudo find . -name '*.gz' -delete
sudo find . -name '*.bz2' -delete
sudo find . -name '*.xz' -delete

for i in *; do
	pushd ${i} &>/dev/null || continue
	test -d ${i} && sudo rm -rf ${i}|| sudo rm -rf ${i%%-git}
	popd &>/dev/null
done
