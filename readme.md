# Android_device_zte_nx503a

Getting Started :

		curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
		chmod 755 ~/bin/repo
		mkdir cm11
		cd cm11
		repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0
		repo sync

		mkdir -p device/zte/nx503a
		git clone https://github.com/XMelancholy/android_device_zte_nx503a.git -b cm-11.0 device/zte/nx503a

		mkdir -p device/qcom/common
		git clone https://github.com/CyanogenMod/android_device_qcom_common.git -b cm-11.0 device/qcom/common

		mkdir -p hardware/qcom/display-caf-new
		git clone https://github.com/CyanogenMod/android_hardware_qcom_display-caf-new.git -b cm-11.0 hardware/qcom/display-caf-new

		mkdir -p hardware/qcom/media-caf-new
		git clone https://github.com/CyanogenMod/android_hardware_qcom_media-caf-new.git -b cm-11.0 hardware/qcom/media-caf-new



Now connect your phone which have runing CM11 :

vendor

		mkdir -p vendor/zte/nx503a
		git clone https://github.com/XMelancholy/android_vendor_zte_nx503a -b cm-11.0 vendor/zte/nx503a


kernel 

		mkdir -p kernel/zte/nx503a
		git clone https://github.com/XMelancholy/android_kernel_zte_nx503a -b cm-11.0 kernel/zte/nx503a


Patch android source code :

		patch -p1 < device/zte/nx503a/patches/frameworks_base.patch
		patch -p1 < device/zte/nx503a/patches/vendor_cm.patch


Our step is optional!!! Use only if you going to sync CM 11 source code daily, than simple revert each patch before you sync CM 11 source code :

		patch -p1 -R < device/zte/nx503a/patches/frameworks_base.patch
		patch -p1 -R < device/zte/nx503a/patches/vendor_cm.patch
		repo forall -p -c 'git checkout -f'
		repo sync
		patch -p1 < device/zte/nx503a/patches/frameworks_base.patch
		patch -p1 < device/zte/nx503a/patches/vendor_cm.patch


Download CM prebuilts : 

		./vendor/cm/get-prebuilts

You are ready to build :

		source build/envsetup.sh
		lunch cm_nx503a-userdebug
		make otapackage

ENJOY!

