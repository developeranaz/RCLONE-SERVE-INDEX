FROM developeranaz/rc-index:latest
COPY donate-developeranaz.txt /donate-developeranaz.txt
COPY entrypoint.sh /entrypoint.sh 
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
