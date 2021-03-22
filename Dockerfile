FROM debian:sid

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y aria2\
    && apt install -y rclone\
    && mkdir /root/.config\
    && mkdir /root/.config/rclone\
    && apt autoremove -y

COPY entrypoint.sh /entrypoint.sh
COPY rclone.conf /root/.config/rclone/rclone.conf
RUN rclone version
RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
