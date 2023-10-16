#!/bin/bash
# @license MIT, Insality 2022
# @source https://github.com/Insality/druid

echo "Run bash for $1"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

is_defree_installed=$(pip3 list --disable-pip-version-check | grep -E "deftree")
is_defree_installed=1
if [ -z "$is_defree_installed" ]; then
    echo "The python deftree is not installed. Please install it via"
    echo "pip3 install deftree"
    exit 0
fi

C:\Users\Brian Murray\AppData\Local\Microsoft\WindowsApps\PythonSoftwareFoundation.Python.3.10_qbz5n2kfra8p0\python3 $1 $2

