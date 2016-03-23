root_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
vendor_dir=$root_dir/vendor

vendor_dir_cliclick=$vendor_dir/cliclick
vendor_cliclick=cliclick


if [ ! -d $vendor_dir ]; then
	# crete /vendor directory
	mkdir vendor
fi


if [ ! -d $vendor_dir_cliclick ]; then
	# get cliclick repo
	cd $vendor_dir
	git clone https://github.com/BlueM/cliclick
fi


if [ ! -f $vendor_dir_cliclick/$vendor_cliclick ]; then
	# make the cliclick executable
	cd $vendor_dir_cliclick
	make
fi


# check if the executable exists
if [ -f $vendor_dir_cliclick/$vendor_cliclick ]
then
	echo 'SUCCESS:' $vendor_cliclick 'exists'
else
	echo 'ERROR: unable to find' $vendor_cliclick
fi

cd $root_dir