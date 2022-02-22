################################################################################
#
# directfb2 media
#
################################################################################

DIRECTFB2_MEDIA_VERSION = 2f5673db9dd6b7861e3c3079cd05397893918da2
DIRECTFB2_MEDIA_SITE = https://github.com/directfb2/DirectFB2-media.git
DIRECTFB2_MEDIA_SITE_METHOD = git
DIRECTFB2_MEDIA_DEPENDENCIES = directfb2
DIRECTFB2_MEDIA_LICENSE = MIT

$(eval $(meson-package))

