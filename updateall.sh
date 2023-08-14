#!/bin/bash

set -e
set -x

DFB2=`git ls-remote https://github.com/fifteenhex/DirectFB2.git | grep misc_fixes_20230814 | cut -f 1`

sed -i "s/VERSION.*$/VERSION\ =\ ${DFB2}/" package/directfb2/directfb2.mk

