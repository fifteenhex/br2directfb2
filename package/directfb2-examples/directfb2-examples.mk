################################################################################
#
# directfb2 examples
#
################################################################################

DIRECTFB2_EXAMPLES_VERSION = 9ef1362be7b0e9c07a50594ebdbc49ec356e4603
DIRECTFB2_EXAMPLES_SITE = https://github.com/directfb2/DirectFB-examples.git
DIRECTFB2_EXAMPLES_SITE_METHOD = git
DIRECTFB2_EXAMPLES_DEPENDENCIES = host-flux directfb2
DIRECTFB2_EXAMPLES_LICENSE = MIT

$(eval $(meson-package))

