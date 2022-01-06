cmake_minimum_required(VERSION 3.0)
project("ListControl")
include(ScadeSDK)
add_scade_application("ListControl" "com.scade.listcontrol"
	"${CMAKE_CURRENT_SOURCE_DIR}/.."
	USE_SPM
	APP_NAME "ListControl"
	APP_SPM_NAME "ListControl"
	APPLE_DISPLAY_NAME "ListControl"
	ANDROID_DISPLAY_NAME "ListControl"
	SOURCES
	"Sources/ListControl/Country.swift"
	"Sources/ListControl/Extensions/Pages/main.page.ext.swift"
	"Sources/ListControl/main.page.swift"
	"Sources/ListControl/start.swift"

	RESOURCES
		RESOURCES_GROUP "Sources/ListControl" NOPREFIX
			"main.page"
			"main.page.svg"
		RESOURCES_GROUP NOBASE NOPREFIX

	IOS_EXPORT_METHOD "ad-hoc"
	MACOS_PLIST_PROPERTIES
		"CFBundleVersion" STRING "1"
		"NSPhotoLibraryUsageDescription" STRING "Choose a photo from your library"
		"NSCameraUsageDescription" STRING "Take pictures from camera"
		"CFBundleShortVersionString" STRING "1.0"
		"NSLocationWhenInUseUsageDescription" STRING ""

		"UIDeviceFamily" ARRAY
			INT "1"
		ARRAY_END
		"UISupportedInterfaceOrientations" ARRAY
			STRING "UIInterfaceOrientationPortrait"
		ARRAY_END
		"UISupportedInterfaceOrientations~ipad" ARRAY
			STRING "UIInterfaceOrientationPortrait"
		ARRAY_END

)

set_property(TARGET ListControl PROPERTY ANDROID_KEYSTORE_PROPERTIES_FILE "${ANDROID_KEYSTORE_PROPERTIES_FILE}")
set_property(TARGET ListControl PROPERTY ANDROID_VERSION_NAME "1.0.0")
set_property(TARGET ListControl PROPERTY ANDROID_VERSION_CODE "1")


