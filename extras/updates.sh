#!/bin/bash

if [ ! -d ".repo" ]; then
    echo -e "No .repo directory found.  Is this an Android build tree?"
    exit 1
fi

android="${PWD}"

# Add LegacyXperiaAOSP DeviceSettings
cherries+=(LX_252)

# msm7x30-common: Enable BOARD_EGL_WORKAROUND_BUG_10194508 flag
cherries+=(LX_259)

# audio: Make getPresentationPosition pure virtual
cherries+=(CM_92381)

# fix AudioPolicyManager assert when making a call
cherries+=(LX_296)

# Add local cherries if they exist
if [ -f ${android}/updates-local.sh ]; then
    source ${android}/updates-local.sh
fi

if [ -z $cherries ]; then
    echo -e "Nothing to cherry-pick!"
else
    ${android}/build/tools/repopick.py -b ${cherries[@]}
fi
