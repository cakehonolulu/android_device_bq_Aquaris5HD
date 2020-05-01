echo $1
rootdirectory=/home/cakehonolulu/CM
# ---------------------------------

dirs="bionic build external/skia external/openssl external/icu frameworks/av frameworks/native frameworks/base frameworks/opt/telephony hardware/libhardware hardware/libhardware_legacy packages/apps/Settings packages/services/Telephony system/core system/netd external/wpa_supplicant_8"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/bq/Aquaris5HD/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
