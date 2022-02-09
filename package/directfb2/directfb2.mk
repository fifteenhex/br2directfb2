################################################################################
#
# directfb2
#
################################################################################

DIRECTFB2_VERSION = b3e66e4b8b78d443d9920f12b385e5c580f56570
DIRECTFB2_SITE = https://github.com/directfb2/DirectFB2.git
DIRECTFB2_SITE_METHOD = git
DIRECTFB2_DEPENDENCIES = host-flux
DIRECTFB2_LICENSE = LGPL-2.1
DIRECTFB2_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_DIRECTFB2_MULTI),y)
	DIRECTFB2_CONF_OPTS += -Dmulti=true
else
	DIRECTFB2_CONF_OPTS += -Dmulti=false
endif

ifeq ($(BR2_PACKAGE_DIRECTFB2_DRMKMS),y)
	DIRECTFB2_CONF_OPTS += -Ddrmkms=true
else
	DIRECTFB2_CONF_OPTS += -Ddrmkms=false
endif

ifeq ($(BR2_PACKAGE_DIRECTFB2_FBDEV),y)
	DIRECTFB2_CONF_OPTS += -Dfbdev=true
else
	DIRECTFB2_CONF_OPTS += -Dfbdev=false
endif

$(eval $(meson-package))
