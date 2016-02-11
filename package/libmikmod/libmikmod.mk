#############################################################
#
# libmikmod
#
#############################################################
LIBMIKMOD_VERSION:=3.3.8
LIBMIKMOD_SITE:=http://sourceforge.net/projects/mikmod/files/libmikmod/$(LIBMIKMOD_VERSION)

LIBMIKMOD_CONF_OPT = --localstatedir=/var \
		--disable-esd

LIBMIKMOD_LIBTOOL_PATCH = NO
LIBMIKMOD_INSTALL_STAGING = YES

define LIBMIKMOD_REMOVE_LIBMIKMOD_CONFIG
rm -f $(TARGET_DIR)/usr/bin/libmikmod-config
endef
LIBMIKMOD_POST_INSTALL_TARGET_HOOKS += LIBMIKMOD_REMOVE_LIBMIKMOD_CONFIG

$(eval $(autotools-package))
