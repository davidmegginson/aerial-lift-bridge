FG_SCENERY=${HOME}/.local/share/scenery/local-scenery-mods

TARGET_DIR=Objects/w100n40/w093n46/

FILES=aerial-lift-bridge.ac \
  aerial-lift-bridge.xml \
  aerial-lift-bridge1.png \
  aerial-lift-bridge2.png


VIEW_LAT=46.77781462
VIEW_LON=-92.09632950
VIEW_HDG=63
VIEW_ALT=700

install:
	cp ${FILES} ${FG_SCENERY}/${TARGET_DIR}

view: install
	fgfs --aircraft=ufo --disable-sound --console --timeofday=noon --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}

view-night: install
	fgfs --aircraft=ufo --disable-sound --console --timeofday=dusk --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}
