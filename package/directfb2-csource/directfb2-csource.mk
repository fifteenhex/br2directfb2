################################################################################
#
# directfb2 csource
#
################################################################################

DIRECTFB2_CSOURCE_VERSION = 2758dee7937e8850d6c8105bd6ef1db06c86064f
DIRECTFB2_CSOURCE_SITE = https://github.com/directfb2/directfb-csource.git
DIRECTFB2_CSOURCE_SITE_METHOD = git
DIRECTFB2_CSOURCE_DEPENDENCIES = directfb2
DIRECTFB2_CSOURCE_LICENSE = MIT

$(eval $(meson-package))

