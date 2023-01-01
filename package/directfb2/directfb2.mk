################################################################################
#
# directfb2
#
################################################################################

DIRECTFB2_VERSION = 747ec89ddf56496a564e31df3915ebc47e069175
DIRECTFB2_SITE = https://github.com/fifteenhex/DirectFB2.git
DIRECTFB2_SITE_METHOD = git
DIRECTFB2_DEPENDENCIES = host-flux
DIRECTFB2_LICENSE = LGPL-2.1
DIRECTFB2_INSTALL_STAGING = YES

# ignore the -Os option, this is performance critical
DIRECTFB2_CFLAGS = $(TARGET_CFLAGS) -O3
DIRECTFB2_CXXFLAGS = $(TARGET_CFLAGS) -O3

ifeq ($(BR2_GCC_ENABLE_LTO),y)
DIRECTFB2_CFLAGS += -flto
DIRECTFB2_CXXFLAGS += -flto
endif

ifeq ($(BR2_ARM_CPU_HAS_NEON),y)
DIRECTFB2_CFLAGS += -mfpu=neon
DIRECTFB2_CXXFLAGS += -mfpu=neon
endif

ifeq ($(BR2_PACKAGE_DIRECTFB2_MULTI),y)
DIRECTFB2_CONF_OPTS += -Dmulti=true
else
DIRECTFB2_CONF_OPTS += -Dmulti=false
endif

ifeq ($(BR2_PACKAGE_DIRECTFB2_DRMKMS),y)
DIRECTFB2_CONF_OPTS += -Ddrmkms=true
DIRECTFB2_DEPENDENCIES += libdrm
else
DIRECTFB2_CONF_OPTS += -Ddrmkms=false
endif

ifeq ($(BR2_PACKAGE_DIRECTFB2_FBDEV),y)
DIRECTFB2_CONF_OPTS += -Dfbdev=true
else
DIRECTFB2_CONF_OPTS += -Dfbdev=false
endif

$(eval $(meson-package))
