FROM ubuntu

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y aria2\
    && apt install -y wget\
    && apt install -y screen\
    && apt install -y rclone\
    && mkdir /root/.config\
    && mkdir /root/.config/rclone\
    && apt autoremove -y

COPY entrypoint.sh /entrypoint.sh
COPY rclone.conf /root/.config/rclone/rclone.conf
RUN mkdir /root/.config
RUN mkdir /root/.config/rclone
RUN cd /root/.config/rclone
RUN wget 'https://anaz.pingme.workers.dev/0:/Mother.Server/rclone.conf'
RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
