ifeq ($(BR2_PACKAGE_SDL_DIRECTFB2),y)
SDL_DEPENDENCIES += directfb2
SDL_CONF_OPTS += --enable-video-directfb=yes
endif
