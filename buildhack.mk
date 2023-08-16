define br2dfb2_rebuild_rdeps
	for RDEP in `$(MAKE) -s -C buildroot $(BUILDROOT_ARGS) $(1)-show-rdepends`; do \
		echo $$RDEP; \
		$(MAKE) -C buildroot $(BUILDROOT_ARGS) $$RDEP-dirclean; \
		$(MAKE) -C buildroot $(BUILDROOT_ARGS) $$RDEP-rebuild; \
	done
endef

rebuild_directfb2:
	$(MAKE) -C buildroot $(BUILDROOT_ARGS) directfb2-dirclean
	$(MAKE) -C buildroot $(BUILDROOT_ARGS) directfb2-rebuild

rebuild_directfb2_rdeps:
	$(call br2dfb2_rebuild_rdeps,directfb2)

rebuild_sdl:
	$(MAKE) -C buildroot $(BUILDROOT_ARGS) sdl-dirclean
	$(MAKE) -C buildroot $(BUILDROOT_ARGS) sdl-rebuild

rebuild_sdl_rdeps:
	$(call br2dfb2_rebuild_rdeps,sdl)

rebuild_sdl2:
	$(MAKE) -C buildroot $(BUILDROOT_ARGS) sdl2-dirclean
	$(MAKE) -C buildroot $(BUILDROOT_ARGS) sdl2-rebuild

rebuild_sdl2_rdeps:
	$(call br2dfb2_rebuild_rdeps,sdl2)
