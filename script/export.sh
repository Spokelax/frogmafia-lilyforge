#!/bin/bash

# Extract versions from pack.toml
MD_VERSION=$(grep "^version" pack.toml | cut -d'"' -f2)
MC_VERSION=$(grep "^minecraft" pack.toml | cut -d'"' -f2)

# Export
packwiz cf export -o "${MC_VERSION}-${MD_VERSION}.zip"
packwiz cf export --side server -o "${MC_VERSION}-${MD_VERSION}-SERVER.zip"