#!/bin/bash
cd "$(dirname ${0})"
if [ "${XDG_CONFIG_HOME}" != "" ]; then
    dist="${XDG_CONFIG_HOME}"
else
    dist="${HOME}/.config"
fi
echo "dist = ${dist}"

mkdir -p "${dist}"

cp -rlfT "$(readlink -f ./config/)/" ${dist}/
cp -rlfT "$(readlink -f ./dotfiles/)/" ${HOME}/
