echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic build external/skia external/openssl external/icu frameworks/av frameworks/native frameworks/base frameworks/opt/telephony hardware/libhardware hardware/libhardware/legacy packages/apps/Settings packages/services/telephony system/core system/netd wpa_supplicant"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
