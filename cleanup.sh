#!/bin/bash

sudo find . -maxdepth 2 -type d -name src -exec rm -rf "{}" \;
sudo find . -maxdepth 2 -type d -name pkg -exec rm -rf "{}" \;

sudo find . -maxdepth 2 -type f -name '*.sign' -delete
sudo find . -maxdepth 2 -type f -name '*.sig' -delete
sudo find . -maxdepth 2 -type f -name '*.pkg' -delete

sudo find . -maxdepth 2 -type f -name '*.zip' -delete
sudo find . -maxdepth 2 -type f -name '*.gz' -delete
sudo find . -maxdepth 2 -type f -name '*.bz2' -delete
sudo find . -maxdepth 2 -type f -name '*.xz' -delete

for i in *; do
	pushd ${i} &>/dev/null || continue
	test -d ${i} && sudo rm -rf ${i} || sudo rm -rf ${i%%-git}
	popd &>/dev/null
done
