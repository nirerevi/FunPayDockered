#!/bin/bash

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

log "Начало установки Docker и Docker Compose"

sudo apt-get update && log "Обновление списка пакетов завершено"

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common && log "Установлены необходимые зависимости"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg && log "Добавлен GPG ключ Docker"

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && log "Добавлен репозиторий Docker"

sudo apt-get update && log "Список пакетов обновлен"

sudo apt-get install -y docker-ce docker-ce-cli containerd.io && log "Docker и Docker Compose успешно установлены"

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && log "Скачан Docker Compose"

sudo chmod +x /usr/local/bin/docker-compose && log "Установлены права на выполнение для Docker Compose"

docker --version && log "Проверка версии Docker: $(docker --version)"
docker-compose --version && log "Проверка версии Docker Compose: $(docker-compose --version)"

log "Запуск контейнера funpay_bot"
docker compose run --rm -it funpay_bot && log "Контейнер успешно запущен"
