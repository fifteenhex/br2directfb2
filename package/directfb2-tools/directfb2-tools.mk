################################################################################
#
# directfb2 tools
#
################################################################################

DIRECTFB2_TOOLS_VERSION = 5ad91ce1a8c7775eca2a4e9f8056d6b67bac01dd
DIRECTFB2_TOOLS_SITE = https://github.com/directfb2/DirectFB2-tools.git
DIRECTFB2_TOOLS_SITE_METHOD = git
DIRECTFB2_TOOLS_DEPENDENCIES = host-flux directfb2
DIRECTFB2_TOOLS_LICENSE = MIT

$(eval $(meson-package))

