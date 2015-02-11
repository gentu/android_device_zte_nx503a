    git clone https://github.com/gentu/android_device_zte_nx503a.git -b cm-12.0 device/zte/nx503a
    git clone https://github.com/gentu/android_kernel_zte_nx503a.git -b cm-12.0 kernel/zte/nx503a
    git clone https://bitbucket.org/gentu/vendor_zte_nx503a.git -b cm-12.0 vendor/zte/nx503a
    # or edit .repo/local_manifests/roomservice.xml

    mkdir -p .repo/local_manifests/
    cp device/zte/nx503a/roomservice.xml .repo/local_manifests/

    sudo cp device/zte/nx503a/cmtools /usr/local/bin/
    cmtools s
          ##s = set current directory as source directory
    cmtools cup
          ##c = clean repo
          ###u = update repo
          ####p = patch repo

    # For update device/kernel/vendor use
    cmtools d

    # Compile
    . build/envsetup.sh
    lunch cm_nx503a-userdebug
    mka otapackage

    ### Also useful
    # mka installclean
    # mka bootimage
    # mka recoveryimage

