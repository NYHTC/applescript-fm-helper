#! /bin/sh# make
#
# Make file for applescript-fm-helper
#
# NYHTC. 2016-08-16-dshockley


root_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
helper_path=$root_dir/main_helper.applescript


osascript "$helper_path"
