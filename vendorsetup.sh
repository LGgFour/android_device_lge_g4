export ALLOW_MISSING_DEPENDENCIES=true
export USE_NINJA=true
export LLVM_ENABLE_THREADS=1

############# /e/ section ###############
#export EOS_DEVICE=h815
export EOS_BRANCH_NAME="v1-pie"
export EOS_RELEASE_TYPE="CUSTOM"
export EOS_CUSTOM_PACKAGES="MuPDF GmsCore GsfProxy FakeStore com.google.android.maps.jar Mail BlissLauncher BlissIconPack MozillaNlpBackend OpenWeatherMapWeatherProvider AccountManager MagicEarth OpenCamera eDrive Weather Notes Tasks NominatimNlpBackend DroidGuard OpenKeychain Message Browser BrowserWebView LibreOfficeViewer noEOSappstore"
export EOS_OTA_CLEARTEXT=true
export EOS_USE_CCACHE=true
export EOS_CCACHE_DIR=/ssd/ccache/lineage-16.0
export EOS_CCACHE_SIZE=14G
export EOS_TMP_DIR=/ssd/tmp/eos
export EOS_ZIP_DIR=/ssd/tmp/eos/zips

add_lunch_combo lineage_f500_usu-userdebug
add_lunch_combo lineage_f500_usu-user
add_lunch_combo lineage_f500_usu_eng

add_lunch_combo lineage_h810_usu-userdebug
add_lunch_combo lineage_h810_usu-user
add_lunch_combo lineage_h810_usu_eng

add_lunch_combo lineage_h811_usu-userdebug
add_lunch_combo lineage_h811_usu-user
add_lunch_combo lineage_h811_usu_eng

add_lunch_combo lineage_h812_usu-userdebug
add_lunch_combo lineage_h812_usu-user
add_lunch_combo lineage_h812_usu_eng

add_lunch_combo lineage_h815-userdebug
add_lunch_combo lineage_h815-user
add_lunch_combo lineage_h815_eng

add_lunch_combo lineage_h815_usu-userdebug
add_lunch_combo lineage_h815_usu-user
add_lunch_combo lineage_h815_usu_eng

add_lunch_combo lineage_ls991_usu-userdebug
add_lunch_combo lineage_ls991_usu-user
add_lunch_combo lineage_ls991_usu_eng

add_lunch_combo lineage_us991_usu-userdebug
add_lunch_combo lineage_us991_usu-user
add_lunch_combo lineage_us991_usu_eng

add_lunch_combo lineage_vs986_usu-userdebug
add_lunch_combo lineage_vs986_usu-user
add_lunch_combo lineage_vs986_usu_eng
