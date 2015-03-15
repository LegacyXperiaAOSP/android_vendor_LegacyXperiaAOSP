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

# Import updated yaffs2 driver
cherries+=(LX_13)

# Revert "msm7x30: Set max background services to 4"
cherries+=(LX_213)

# Remove performance profiles, they are not supported on AOSP
cherries+=(LX_232)

# Add config_sf_limitedAlpha to overlay
cherries+=(LX_231)

if [ -z $cherries ]; then
    echo -e "Nothing to cherry-pick!"
else
    ${android}/vendor/LegacyXperiaAOSP/extras/repopick.py -b ${cherries[@]}
fi
