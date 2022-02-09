################################################################################
#
# directfb2 examples
#
################################################################################

DIRECTFB2_EXAMPLES_VERSION = 43c132484b0def140e6853f81c527bf367c6eaaa
DIRECTFB2_EXAMPLES_SITE = https://github.com/directfb2/DirectFB-examples.git
DIRECTFB2_EXAMPLES_SITE_METHOD = git
DIRECTFB2_EXAMPLES_DEPENDENCIES = host-flux directfb2
DIRECTFB2_EXAMPLES_LICENSE = MIT

$(eval $(meson-package))

