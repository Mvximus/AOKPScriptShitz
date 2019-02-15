echo -e Heres some cleanin..
make clean
echo -e Removing old Trees.. or more..
rm -rf .repo/local_manifests/roomservice.xml
cd device
rm -rf motorola
cd ..
cd vendor
rm -rf motorola
cd ..
cd kernel
rm -rf motorola
cd ..
echo -e Adding fresh trees
git clone https://github.com/crdroidandroid/android_device_motorola_potter -b 9.0 device/motorola/potter
git clone https://github.com/GZR-Kernels/Optimus_Drunk_Potter.git -b 9.0 kernel/motorola/msm8953
git clone https://github.com/crdroidandroid/android_vendor_motorola_potter -b 9.0 vendor/motorola/potter
echo -e One more thing
repo sync --force-sync
bash Extras.sh
echo -e Done! But I would check device trees on CrDroid for any clang commits..
cd device/motorola/potter
echo -e Get to AOKPing!
