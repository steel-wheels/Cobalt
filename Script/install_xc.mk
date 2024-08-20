# install_xc.mk

PROJECT_NAME	?= CoconutData

DERIVED_BASE	= $(HOME)/build/derived-data/
PRODUCT_PATH	= Build/Products/Release

all: pack_os
	echo "done"

pack_os: install_osx 
	(cd $(HOME)/Library/Frameworks ; rm -rf $(PROJECT_NAME).xcframework)
	xcodebuild -create-xcframework \
	  -framework $(DERIVED_BASE)/$(PROJECT_NAME)_macOS/$(PRODUCT_PATH)/$(PROJECT_NAME).framework \
	  -output $(HOME)/Library/Frameworks/$(PROJECT_NAME).xcframework

install_osx: dummy
	xcodebuild build \
	  -scheme $(PROJECT_NAME) \
	  -project $(PROJECT_NAME).xcodeproj \
	  -destination="macOSX" \
	  -configuration Release \
	  -sdk macosx \
	  -derivedDataPath $(DERIVED_BASE)/$(PROJECT_NAME)_macOS \
	  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
	  SKIP_INSTALL=NO \
	  ONLY_ACTIVE_ARCH=NO

dummy:

