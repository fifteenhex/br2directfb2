################################################################################
#
# portablegl
#
################################################################################

PORTABLEGL_VERSION = 9912461f52f0216f7d85803fcdf5cb5cd672226a
PORTABLEGL_SITE = https://github.com/rswinkle/PortableGL.git
PORTABLEGL_SITE_METHOD = git
PORTABLEGL_LICENSE = MIT
PORTABLEGL_DEPENDENCIES = sdl2

define PORTABLEGL_BUILD_CMDS
	PATH=$(HOST_DIR)/bin:$(PATH) make CXX=$(TARGET_CXX) -C $(@D)/testing -j$(NCPUS)
#	PATH=$(HOST_DIR)/bin:$(PATH) make -C $(@D)/demos -j$(NCPUS)
endef

define PORTABLEGL_INSTALL_TARGET_CMDS
        $(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/portablegl/
        $(INSTALL) -d -m 0755 $(TARGET_DIR)/usr/portablegl/demos/
        $(INSTALL) -m 0755 $(@D)/demos/gears $(TARGET_DIR)/usr/portablegl/demos/
endef

$(eval $(generic-package))
