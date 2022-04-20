export ALLOW_MISSING_DEPENDENCIES=true
export USE_NINJA=true
export LLVM_ENABLE_THREADS=1

# Setup variables
G4COMMON="https://github.com/LGgFour/android_device_lge_g4-common.git -b lineage-18.1"
KERNEL="https://github.com/LGgFour/kernel_lge_msm8992.git -b android-11"
VENDOR="https://github.com/LGgFour/proprietary_vendor_lge.git -b android-11"
TIMEKEEP="https://github.com/LineageOS/android_hardware_sony_timekeep.git -b lineage-18.1"


# Check if this is the initial setup or not
FILE=initialsetup
if test -f "$FILE"; then :
else
        rm -rf kernel/lge/msm8992
        rm -rf device/lge/g4-common
        rm -rf vendor/lge
# Remove in-built repos
        rm -rf hardware/broadcom/libbt
        rm -rf vendor/qcom/opensource/data-ipa-cfg-mgr
        rm -rf system/qcom
    echo "Downloading dependencies (initial setup)..."
fi

# Pull changes / download non-existing dependencies
# Sony Timekeep
if [ -d "hardware/sony/timekeep" ]
then
    echo "Pulling Sony Timekeep changes from GitHub"
    git -C hardware/sony/timekeep pull
else
    git clone $TIMEKEEP hardware/sony/timekeep
    echo "Sony Timekeep downloaded"
fi
# LG-Vendor
if [ -d "vendor/lge" ]
then
    echo "Pulling G4 Vendor changes from GitHub"
    git -C vendor/lge pull
else
    git clone $VENDOR vendor/lge
    echo "Vendor downloaded"
fi
# LG-Kernel
if [ -d "kernel/lge/msm8992" ]
then
    echo "Pulling G4 Kernel changes from GitHub"
    git -C kernel/lge/msm8992 pull
else
    git clone $KERNEL kernel/lge/msm8992
    echo "Kernel downloaded"
fi
# g4-common
if [ -d "device/lge/g4-common" ]
then
    echo "Pulling G4 Common tree changes from GitHub"
    git -C device/lge/g4-common pull
else
    git clone $G4COMMON device/lge/g4-common
    echo "g4-common downloaded"
fi

# Create file after initial setup
touch initialsetup

