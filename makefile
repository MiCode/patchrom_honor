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
local-miui-apps     := AntiSpam Backup BugReport CloudService MiuiCompass Contacts DeskClock FileExplorer \
	MiuiHome MiuiSystemUI Mms Monitor Music Notes PackageInstaller Provision QuickSearchBox Settings SoundRecorder SuperMarket \
	ThemeManager Updater ContactsProvider DownloadProvider DownloadProviderUi TelephonyProvider TelocationProvider

# All apps need to be removed from original ZIP file
local-remove-apps := AllBackup SystemUI SetupWizard Cloud NotePad HwIME Superuser MusicFx Launcher2 FileManager HwOUC

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
