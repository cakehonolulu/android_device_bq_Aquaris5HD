1) copy to [rom tree]/device/bq/Aquaris5HD

2) to build use commands:

```
. build/envsetup.sh

lunch full_Aquaris5HD-userdebug

make -j4 recoveryimage V=s
```
