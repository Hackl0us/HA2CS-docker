FROM homeassistant/home-assistant
RUN touch /config/home-assistant.log && cd /config
RUN wget -q -O - https://install.hacs.xyz | bash -