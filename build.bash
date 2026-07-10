#!/bin/bash
set -e

MOD="enable-toggle-tall-button"
VERSION=$(grep -Po '"version":\s*"\K[^"]+' src/info.json)

rm -f "${MOD}"_[0-9]*.zip
rm -f ~/.factorio/mods/"${MOD}"_[0-9]*.zip
[ ! -L ${MOD}_"${VERSION}" ] && ln -s src ${MOD}_"${VERSION}"
zip -r ${MOD}_"${VERSION}".zip ${MOD}_"${VERSION}"
rm -f ${MOD}_"${VERSION}"
cp -f ${MOD}_"${VERSION}".zip ~/.factorio/mods/${MOD}_"${VERSION}".zip
