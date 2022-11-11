################################################################################
#
# directfb2 media
#
################################################################################

DIRECTFB2_MEDIA_VERSION = e8ac5987a16d3f3bd62a79250140338e054ffb27
DIRECTFB2_MEDIA_SITE = https://github.com/directfb2/DirectFB2-media.git
DIRECTFB2_MEDIA_SITE_METHOD = git
DIRECTFB2_MEDIA_DEPENDENCIES = directfb2
DIRECTFB2_MEDIA_LICENSE = MIT

$(eval $(meson-package))

