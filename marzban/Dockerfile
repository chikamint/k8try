FROM gozargah/marzban:latest
# Копируем твой фиксированный xray-core или доустанавливаем утилиты
RUN apt-get update && apt-get install -y curl jq
COPY --from=teddysun/xray:latest /usr/bin/xray /usr/bin/xray
