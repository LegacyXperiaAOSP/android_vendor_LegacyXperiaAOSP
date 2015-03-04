#!/bin/bash

if [ ! -d ".repo" ]; then
    echo -e "No .repo directory found.  Is this an Android build tree?"
    exit 1
fi

android="${PWD}"

# Add local cherries if they exist
if [ -f ${android}/updates-local.sh ]; then
    source ${android}/updates-local.sh
fi

# Revert "Revert "Reenable support for non-PIE executables""
cherries+=(CM_79136)

# vold: add ro.vold.umsdirtyratio property
cherries+=(CM_88635)

if [ -z $cherries ]; then
    echo -e "Nothing to cherry-pick!"
else
    ${android}/vendor/LegacyXperiaAOSP/extras/repopick.py -b ${cherries[@]}
fi