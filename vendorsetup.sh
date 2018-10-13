if [[ -e vendor/aosp ]]; then
    add_lunch_combo aosp_hi6250-userdebug
elif [[ -e vendor/lineage ]]; then
    add_lunch_combo lineage_hi6250-userdebug
elif [[ -e vendor/pixys ]]; then
    add_lunch_combo pixys_hi6250-userdebug
else
    add_lunch_combo aosp_hi6250-userdebug
fi
