#!/bin/bash
# Revanced Extended build
source src/build/utils.sh

# Download requirements
revanced_dl(){
	dl_gh "revanced-patches revanced-cli" "inotia00" "latest"
}

1() {
	revanced_dl
	#Disabled because lastest RVE patch youtube not have splits apk on APKMirror
	# Patch YouTube:
	#get_patches_key "youtube-revanced-extended"
	#get_apk "com.google.android.youtube" "youtube" "youtube" "google-inc/youtube/youtube" "Bundle_extract"
	#split_editor "youtube" "youtube"
	#patch "youtube" "revanced-extended" "inotia"
	# Patch Youtube Arm64-v8a
	#get_patches_key "youtube-revanced-extended"
	#split_editor "youtube" "youtube-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
	#patch "youtube-arm64-v8a" "revanced-extended" "inotia"
	# Patch Youtube Armeabi-v7a
	#get_patches_key "youtube-revanced-extended"
	#split_editor "youtube" "youtube-armeabi-v7a" "exclude" "split_config.arm64_v8a split_config.x86 split_config.x86_64"
	#patch "youtube-armeabi-v7a" "revanced-extended" "inotia"
	# Patch Youtube x86
	#get_patches_key "youtube-revanced-extended"
	#split_editor "youtube" "youtube-x86" "exclude" "split_config.arm64_v8a split_config.armeabi_v7a split_config.x86_64"
	#patch "youtube-x86" "revanced-extended" "inotia"
	# Patch Youtube x86_64
	#get_patches_key "youtube-revanced-extended"
	#split_editor "youtube" "youtube-x86_64" "exclude" "split_config.arm64_v8a split_config.armeabi_v7a split_config.x86"
	#patch "youtube-x86_64" "revanced-extended" "inotia"
	# Patch YouTube:
	get_patches_key "youtube-revanced-extended"
	get_apk "com.google.android.youtube" "youtube" "youtube" "google-inc/youtube/youtube"
	patch "youtube" "revanced-extended" "inotia"
}
2() {
	revanced_dl
}
3() {
	revanced_dl
}
case "$1" in
    1)
        1
        ;;
    2)
        2
        ;;
    3)
        3
        ;;
esac
