#!/bin/bash

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

# Taken from https://github.com/YunoHost-Apps/Experimental_helpers/blob/master/ynh_read_manifest/ynh_read_manifest_2#L14-L28
# Idea from  https://forum.yunohost.org/t/upgrade-script-how-to-modify-parameter-inside-configuration-file/5352/2


# Read the value of a key in a ynh manifest file
#
# usage: ynh_read_manifest manifest key
# | arg: manifest - Path of the manifest to read
# | arg: key - Name of the key to find
ynh_read_manifest () {
	manifest="$1"
	key="$2"
	python3 -c "import sys, json;print(json.load(open('$manifest', encoding='utf-8'))['$key'])"
}

# Read the upstream version from the manifest
# The version number in the manifest is defined by <upstreamversion>~ynh<packageversion>
# For example : 4.3-2~ynh3
# This include the number before ~ynh
# In the last example it return 4.3-2
#
# usage: ynh_app_upstream_version
ynh_app_upstream_version () {
    manifest_path="../manifest.json"
    if [ ! -e "$manifest_path" ]; then
        manifest_path="../settings/manifest.json"	# Into the restore script, the manifest is not at the same place
    fi
    version_key=$(ynh_read_manifest "$manifest_path" "version")
    echo "${version_key/~ynh*/}"
}

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
