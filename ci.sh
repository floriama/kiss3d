#!/bin/bash

echo 'deb http://debian.ethz.ch/debian stretch main contrib' >> /etc/apt/sources.list

apt update
apt upgrade -y
apt install -y clang cmake build-essential libxxf86vm-dev libxrandr-dev xorg-dev libglu1-mesa-dev libxrandr2 libglfw3 libglfw3-dev # libglfw3-wayland

rustup target add wasm32-unknown-unknown
cargo test
cargo build --target wasm32-unknown-unknown