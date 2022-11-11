################################################################################
#
# directfb2 examples
#
################################################################################

DIRECTFB2_EXAMPLES_VERSION = 9c11f0d891fc6a0ec6a2308508238b6af5a00588
DIRECTFB2_EXAMPLES_SITE = https://github.com/directfb2/DirectFB-examples.git
DIRECTFB2_EXAMPLES_SITE_METHOD = git
DIRECTFB2_EXAMPLES_DEPENDENCIES = host-flux directfb2
DIRECTFB2_EXAMPLES_LICENSE = MIT

$(eval $(meson-package))

