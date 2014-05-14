#/bin/sh

VENDOR=zte
DEVICE=nx503a

UPDATE_PACKAGE=~/vendor/zte/MK44.2-NX503A-201404291849-UNOFFICIAL.zip

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
    mkdir -p $BASE/$DIR
  fi
  unzip -p ${UPDATE_PACKAGE} system/$FILE > $BASE/$FILE
done

./setup-makefiles.sh
