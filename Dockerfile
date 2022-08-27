FROM archlinux:latest
COPY build.sh /root/build.sh

RUN pacman -Sy tar gzip git curl bc base base-devel jdk-openjdk openssh openssl python --needed --noconfirm --overwrite '*'

RUN chmod +x /root/build.sh
ENTRYPOINT ["/root/build.sh"]
