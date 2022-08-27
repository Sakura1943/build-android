FROM archlinux:latest

RUN sudo pacman -Sy tar gzip git curl bc base base-devel jdk-openjdk --needed --noconfirm --overwrite '*' && \
    mkdir -p ~/bin && \
    mkdir -p ~/android/lineage
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && \
    chmod a+x ~/bin/repo
RUN ~/bin/repo init -u https://github.com/LineageOS/android.git -b lineage-19.1 && \
    ~/bin/repo sync && \
    tar -czvf cd ~/android/lineage -C /root/file.tar.gz
