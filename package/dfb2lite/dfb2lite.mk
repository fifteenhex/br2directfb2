################################################################################
#
# LiTE for DirectFB2
#
################################################################################

DFB2LITE_VERSION = 486c0878e99f6a3f5a805ac63fc8fb27987d3cb6
DFB2LITE_SITE = https://github.com/directfb2/LiTE.git
DFB2LITE_SITE_METHOD = git
DFB2LITE_DEPENDENCIES = directfb2
DFB2LITE_LICENSE = LGPL-2.1
DFB2LITE_INSTALL_STAGING = YES

$(eval $(meson-package))
