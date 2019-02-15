echo oh boy...
. build/envsetup.sh
export AOKP_BUILDTYPE=beta
clear
echo Lets Start.
lunch aokp_potter-userdebug
mka rainbowfarts
cd out/target/product/potter && ls
gdrive upload aokp_potter_pie_*.zip
