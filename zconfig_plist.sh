#!bin/bash
###################################################################
#Script Name	: ZoomConfig.sh                                                                                            
#Description	: This is a pre-install script used to generate .plist file for mass deployment of zoom videoconferencing via Munki.
#Author       	: Ritesh Thapa                                        
###################################################################
PLISTCMD=( "Add :nofacebook bool true" "Add :nogoogle bool true" 
"Add :ZAutoUpdate bool true" "Add :ZDisableVideo bool true" 
"Add :ZAutoJoinVoip bool true" "Add :ZDualMonitorOn bool true" 
"Add :ZAutoSSOLogin bool true" "Add :ZSSOHost string example.zoom.us" 
"Add :ZAutoFullScreenWhenViewShare bool true" "Add :ZAutoFitWhenViewShare bool true"
"Add :ZUse720PByDefault bool true" "Add :ZRemoteControlAllApp bool true")

for i in "${PLISTCMD[@]}"
do
	/usr/libexec/PlistBuddy -c "$i" /Library/Managed\ Installs/Cache/us.zoom.config.plist 
done