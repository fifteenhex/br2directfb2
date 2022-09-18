################################################################################
#
# DFBTerm
#
################################################################################

DFBTERM_VERSION = c6e3d58e7b3a1a789bde9afd172d143a5610a313
DFBTERM_SITE = https://github.com/directfb2/DFBTerm.git
DFBTERM_SITE_METHOD = git
DFBTERM_DEPENDENCIES = dfb2lite
DFBTERM_LICENSE = GPL-2.0

$(eval $(meson-package))
