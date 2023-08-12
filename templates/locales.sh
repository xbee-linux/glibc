#!/bin/bash
set -e

mkdir -pv {{ .xbee.out }}/usr/lib/locale
make localedata/install-locales
export I18NPATH={{ .xbee.out }}/usr/share/i18n
localedef --prefix={{ .xbee.out }} -i POSIX -f UTF-8 C.UTF-8 2> /dev/null || true
localedef --prefix={{ .xbee.out }} -i cs_CZ -f UTF-8 cs_CZ.UTF-8
localedef --prefix={{ .xbee.out }} -i de_DE -f ISO-8859-1 de_DE
localedef --prefix={{ .xbee.out }} -i de_DE@euro -f ISO-8859-15 de_DE@euro
localedef --prefix={{ .xbee.out }} -i de_DE -f UTF-8 de_DE.UTF-8
localedef --prefix={{ .xbee.out }} -i el_GR -f ISO-8859-7 el_GR
localedef --prefix={{ .xbee.out }} -i en_GB -f ISO-8859-1 en_GB
localedef --prefix={{ .xbee.out }} -i en_GB -f UTF-8 en_GB.UTF-8
localedef --prefix={{ .xbee.out }} -i en_HK -f ISO-8859-1 en_HK
localedef --prefix={{ .xbee.out }} -i en_PH -f ISO-8859-1 en_PH
localedef --prefix={{ .xbee.out }} -i en_US -f ISO-8859-1 en_US
localedef --prefix={{ .xbee.out }} -i en_US -f UTF-8 en_US.UTF-8
localedef --prefix={{ .xbee.out }} -i es_ES -f ISO-8859-15 es_ES@euro
localedef --prefix={{ .xbee.out }} -i es_MX -f ISO-8859-1 es_MX
localedef --prefix={{ .xbee.out }} -i fa_IR -f UTF-8 fa_IR
localedef --prefix={{ .xbee.out }} -i fr_FR -f ISO-8859-1 fr_FR
localedef --prefix={{ .xbee.out }} -i fr_FR@euro -f ISO-8859-15 fr_FR@euro
localedef --prefix={{ .xbee.out }} -i fr_FR -f UTF-8 fr_FR.UTF-8
localedef --prefix={{ .xbee.out }} -i is_IS -f ISO-8859-1 is_IS
localedef --prefix={{ .xbee.out }} -i is_IS -f UTF-8 is_IS.UTF-8
localedef --prefix={{ .xbee.out }} -i it_IT -f ISO-8859-1 it_IT
localedef --prefix={{ .xbee.out }} -i it_IT -f ISO-8859-15 it_IT@euro
localedef --prefix={{ .xbee.out }} -i it_IT -f UTF-8 it_IT.UTF-8
localedef --prefix={{ .xbee.out }} -i ja_JP -f EUC-JP ja_JP
localedef --prefix={{ .xbee.out }} -i ja_JP -f SHIFT_JIS ja_JP.SIJS 2> /dev/null || true
localedef --prefix={{ .xbee.out }} -i ja_JP -f UTF-8 ja_JP.UTF-8
localedef --prefix={{ .xbee.out }} -i nl_NL@euro -f ISO-8859-15 nl_NL@euro
localedef --prefix={{ .xbee.out }} -i ru_RU -f KOI8-R ru_RU.KOI8-R
localedef --prefix={{ .xbee.out }} -i ru_RU -f UTF-8 ru_RU.UTF-8
localedef --prefix={{ .xbee.out }} -i se_NO -f UTF-8 se_NO.UTF-8
localedef --prefix={{ .xbee.out }} -i ta_IN -f UTF-8 ta_IN.UTF-8
localedef --prefix={{ .xbee.out }} -i tr_TR -f UTF-8 tr_TR.UTF-8
localedef --prefix={{ .xbee.out }} -i zh_CN -f GB18030 zh_CN.GB18030
localedef --prefix={{ .xbee.out }} -i zh_HK -f BIG5-HKSCS zh_HK.BIG5-HKSCS
localedef --prefix={{ .xbee.out }} -i zh_TW -f UTF-8 zh_TW.UTF-8
