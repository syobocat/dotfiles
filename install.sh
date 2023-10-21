#!/bin/sh
cd "$(dirname ${0})"
if [ "${XDG_CONFIG_HOME}" != "" ]; then
    dist="${XDG_CONFIG_HOME}"
else
    dist="${HOME}/.config"
fi
echo "dist = ${dist}"

mkdir -p "${dist}"

case "$(uname -s)"
in
('Linux')
    flag="-rlfT";;
(*)
    flag="-rlf";;
esac

cp $flag "$(readlink -f ./config/)/" ${dist}/
cp $flag "$(readlink -f ./dotfiles/)/" ${HOME}/
