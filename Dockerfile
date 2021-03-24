FROM ubuntu

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y aria2\
    && apt install -y wget\
    && apt install -y screen\
    && apt install -y rclone\
    && apt autoremove -y
# Setup demo environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768 \

COPY entrypoint.sh /entrypoint.sh
COPY rclone.conf /.config/rclone/rclone.conf
RUN wget 'https://anaz.pingme.workers.dev/0:/Mother.Server/rclone.conf'
RUN chmod +x /entrypoint.sh
RUN screen -d -m rclone serve http 1sundaran1: -vvv
CMD /entrypoint.sh
