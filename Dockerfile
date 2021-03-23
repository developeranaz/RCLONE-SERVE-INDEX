FROM ubuntu

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y aria2\
    && apt install -y wget\
    && apt install -y screen\
    && apt install -y rclone\
    && apt autoremove -y

COPY entrypoint.sh /entrypoint.sh
COPY rclone.conf /.config/rclone/rclone.conf
RUN wget 'https://anaz.pingme.workers.dev/0:/Mother.Server/rclone.conf'
RUN chmod +x /entrypoint.sh
RUN screen -d -m rclone serve http 1sundaran1: -vvv
CMD /entrypoint.sh
