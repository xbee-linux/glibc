#!/bin/bash
set -e

sed -e '/NOTIFY_REMOVED)/s/)/ \&\& data.attr != NULL)/' -i sysdeps/unix/sysv/linux/mq_notify.c
patch -Np1 -i ../glibc-2.34-fhs-1.patch
echo "rootsbindir={{ .pack.exportDir }}/usr/sbin" > build/configparms
