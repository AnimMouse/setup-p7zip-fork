#!/bin/sh
set -eu
echo ::group::Downloading p7zip fork $version for $RUNNER_OS
mkdir p7zip-fork
wget -q $GITHUB_SERVER_URL/p7zip-project/p7zip/releases/download/$version/linux-p7zip.zip 
unzip -q linux-p7zip.zip 7za -d p7zip-fork
echo ::endgroup::