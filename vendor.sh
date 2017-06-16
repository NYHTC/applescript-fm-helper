root_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
vendor_dir="$root_dir"/vendor

dir_cliclick="$vendor_dir"/cliclick
exec_cliclick=cliclick


if [ ! -d "$vendor_dir" ]; then
	# create /vendor directory
	mkdir "$vendor_dir"
fi


if [ ! -d "$dir_cliclick" ]; then
	# get cliclick repo
	cd "$vendor_dir"
	git clone https://github.com/BlueM/cliclick.git
fi


if [ ! -f "$dir_cliclick"/"$exec_cliclick" ]; then
	# make the cliclick binary
	cd "$dir_cliclick"
	make
fi


# check if the executable exists
if [ -f "$dir_cliclick"/"$exec_cliclick" ]
then
	echo 'SUCCESS:' "$exec_cliclick" 'exists'
else
	echo 'ERROR: unable to find' "$exec_cliclick"
fi

cd "$root_dir"