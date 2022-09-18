################################################################################
#
# LiTE for DirectFB2
#
################################################################################

DFB2LITE_VERSION = 1f9a04862db154d409110aa9ce8ec8567b6018bb
DFB2LITE_SITE = https://github.com/directfb2/LiTE.git
DFB2LITE_SITE_METHOD = git
DFB2LITE_DEPENDENCIES = directfb2
DFB2LITE_LICENSE = LGPL-2.1
DFB2LITE_INSTALL_STAGING = YES

$(eval $(meson-package))
