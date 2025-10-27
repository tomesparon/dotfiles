#!/usr/bin/env bash
# Install script for ubuntu based non snap
# Termux is just pkg install msedit
ARCH=$(uname -m)
RELEASE_VERSION="v1.2.1"
BINARY_VERSION="1.2.0"

if  [[ "${ARCH}" == "x86_64" ]]; then
    wget "https://github.com/microsoft/edit/releases/download/${RELEASE_VERSION}/edit-${BINARY_VERSION}-${ARCH}-linux-gnu.tar.zst"
elif [[ "${ARCH}" == "aarch64" ]]; then
    wget "https://github.com/microsoft/edit/releases/download/${RELEASE_VERSION}/edit-${BINARY_VERSION}-${ARCH}-linux-gnu.tar.zst"
else
    echo "No supported arch build found"
fi

tar --zstd -xvf edit-${BINARY_VERSION}-${ARCH}-linux-gnu.tar.zst
mkdir /home/$USER/.local/bin/
mv -v edit ~/.local/bin/
exec bash

