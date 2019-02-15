echo -e --Adding Extras !Required!
if [ -e packages/resources/devicesettings ]
then
    echo "already have, skipping.."
else
    git clone https://github.com/LineageOS/android_packages_resources_devicesettings -b lineage-16.0 packages/resources/devicesettings
fi
if [ -e packages/apps/FlipFlap ]
then
    echo "already have, skipping.."
else
    git clone https://github.com/LineageOS/android_packages_apps_FlipFlap -b lineage-16.0 packages/apps/FlipFlap
fi
echo -e Done
