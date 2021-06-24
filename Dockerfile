FROM homeassistant/home-assistant
RUN touch /config/home-assistant.log && cd /config
COPY scripts/01-remove-ha-db /etc/cont-init.d/
RUN wget -q -O - https://install.hacs.xyz | bash -