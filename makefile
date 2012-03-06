#
# Makefile for u8860
#

# The original zip file, MUST be specified by each product
local-zip-file     := u8860_ICS_B969SP03.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_u8860.zip

# All apps from original ZIP, but has smali files chanded
#local-modified-apps := LogsProvider Phone MediaProvider Settings

# All apks from MIUI
local-removed-miui-apps     := Phone Browser

# All apps need to be removed from original ZIP file
local-remove-apps := AllBackup SystemUI SetupWizard Cloud NotePad HwIME Superuser MusicFx Launcher2 FileManager HwOUC \
	rootexplorer GenieWidget GalleryGoogle CalendarGoogle GoogleQuickSearchBox GooglePackageVerifier.apk GooglePackageVerifierUpdater.apk \
	GoogleTTS.apk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc: add-lbesec-miui
	rm -rf $(ZIP_DIR)/system/cdrom
	rm $(ZIP_DIR)/system/bin/su
	more $(ZIP_DIR)/system/build.prop | sed -e "s/ro\.config\.hw_quickpoweron=true/ro.config.hw_quickpoweron=false/" > build.prop.new
	mv build.prop.new $(ZIP_DIR)/system/build.prop
