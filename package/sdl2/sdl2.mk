ifeq ($(BR2_PACKAGE_SDL2_DIRECTFB2),y)
SDL2_DEPENDENCIES += directfb2
SDL2_CONF_OPTS += --enable-video-directfb --disable-directfb-shared
endif
