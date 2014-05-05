# Android_device_zte_NX503A

Getting Started :

		curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
		chmod 755 ~/bin/repo
		mkdir cm11
		cd cm11
		repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0
		repo sync

		mkdir -p device/zte/NX503A
		git clone https://github.com/XMelancholy/android_device_zte_NX503A.git -b cm-11.0 device/zte/NX503A

		mkdir -p device/zte/msm8974-common
		git clone https://github.com/XMelancholy/android_device_zte_msm8974-common.git -b cm-11.0 device/zte/msm8974-common

		mkdir -p device/qcom/common
		git clone https://github.com/CyanogenMod/android_device_qcom_common.git -b cm-11.0 device/qcom/common


Now connect your phone which have runing CM11 :

Adb mode
		cd device/zte/NX503A
		./extract-files.sh

unzip mode
		cd device/zte/NX503A
		./unzip-files.sh

		cd ../../..
		mkdir -p kernel/zte
		git clone https://github.com/XMelancholy/android_kernel_zte_NX503A -b cm-11.0 kernel/zte/NX503A


Download CM prebuilts : 

		./vendor/cm/get-prebuilts

You are ready to build :

		source build/envsetup.sh
		lunch cm_NX503A-userdebug
		make otapackage

ENJOY!

