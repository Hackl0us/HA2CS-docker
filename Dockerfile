FROM homeassistant/home-assistant

RUN touch /config/home-assistant.log
RUN wget -q -O - https://install.hacs.xyz | bash -
RUN wget --no-check-certificate -q https://github.com/ha0y/xiaomi_miot_raw/archive/master.tar.gz && \
    tar xzvf master.tar.gz && \
    mv -f xiaomi_miot_raw-master/custom_components/xiaomi_miot_raw /config/custom_components && \
    rm -rf xiaomi_miot_raw-master master.tar.gz

RUN mv -f /config/custom_components /mnt/

COPY scripts/* /etc/cont-init.d/