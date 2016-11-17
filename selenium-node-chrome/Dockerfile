from selenium/node-chrome

ARG host
ARG port
ENV server "$host:$port"
ENV HUB_PORT_4444_TCP_ADDR "$host:$port/grid/register/"
COPY entrypoint.sh /opt/bin/entrypoint.sh
RUN sudo chmod +x /opt/bin/entrypoint.sh
RUN sudo apt-get update && sudo apt-get install -y curl
ENTRYPOINT ["/opt/bin/entrypoint.sh","/opt/bin/entry_point.sh"]
