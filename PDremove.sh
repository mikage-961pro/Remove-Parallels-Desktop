echo "Parallels Desktop のキャッシュやシステム情報を削除します"

 echo "
WARNING: This script will remove all files and folders created by Parallels Desktop 
         and any files within those folders. Therefore, you will
         lose ALL files that reside in those folders, including any that
         you have created.
"

sudo launchctl stop com.parallels.vm.prl_naptd
sudo launchctl stop com.parallels.desktop.launchdaemon
sudo launchctl stop com.parallels.vm.prl_pcproxy

sudo kextunload -b com.parallels.kext.prl_hypervisor
sudo kextunload -b com.parallels.kext.prl_hid_hook
sudo kextunload -b com.parallels.kext.prl_usb_connect
sudo kextunload -b com.parallels.kext.prl_netbridge
sudo kextunload -b com.parallels.kext.prl_vnic
sudo kextunload -b com.parallels.filesystems.prlufs

sudo rm -rf /Library/Parallels
sudo rm -rf /Applications/ParallelsDesktop.app
sudo rm -rf /Library/LaunchDaemons/com.parallels.desktop.launchdaemon.plist
sudo rm -rf /Library/LaunchAgents/com.parallels.*
sudo rm -rf /Library/Python/*/site-packages/prlsdkapi
sudo rm -rf /usr/bin/prl_perf_ctl
sudo rm -rf /usr/bin/prlctl
sudo rm -rf /usr/bin/prlsrvctl
sudo rm -rf /usr/bin/prl_disk_tool
sudo rm -rf /usr/share/man/man8/prl*
sudo rm -rf /var/db/Parallels/Stats/ParallelsDesktop.*
sudo rm -rf /usr/lib/parallels
sudo rm -rf /Library/Filesystems/prlufs.fs
sudo rm -rf /Library/Preferences/Parallels
sudo rm -rf /Library/Logs/parallels
sudo rm -rf ~/Library/Preferences/com.parallels.*