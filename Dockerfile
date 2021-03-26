FROM nginx:1.19.6
RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y aria2\
    && apt install -y wget\
    && apt install -y nginx\
    && apt install -y screen\
    && apt install -y rclone\
    && apt autoremove -y

COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY nginx.conf /etc/nginx/nginx.conf
COPY static-html /usr/share/nginx/html
RUN mkdir /usr/share/nginx/html/cop
COPY entrypoint.sh /entrypoint.sh
COPY rclone.conf /.config/rclone/rclone.conf
RUN wget 'https://anaz.pingme.workers.dev/0:/Mother.Server/rclone.conf'
RUN chmod +x /entrypoint.sh
RUN screen -d -m rclone serve http 1sundaran1: -vvv

CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'
CMD /entrypoint.sh
