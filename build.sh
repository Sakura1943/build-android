#!/bin/bash
mkdir -p ~/bin
mkdir -p ~/android/lineage
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
cd ~/android/lineage
~/bin/repo init -u https://github.com/LineageOS/android.git -b lineage-19.1
~/bin/repo sync 
tar -czvf cd ~/android/lineage -C /root/file.tar.gz
