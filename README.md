# FunPay Vertex
**Простой и эффективный бот для автоматизации FunPay с поддержкой Docker**

**fork FunPayVertex by NightStrang6r** 

## Содержание
- [Возможности](#возможности)
  - [FunPay](#funpay)
  - [Уведомления и ПУ в Telegram](#уведомления-и-пу-в-telegram)
  - [Дополнительные возможности](#дополнительные-возможности)
- [Установка](#установка)
  - [Windows](#windows)
  - [Linux (Ubuntu)](#linux-ubuntu)

## Возможности

### FunPay
- Автовыдача товаров.
- Автоподнятие лотов.
- Автоответ на заготовленные команды.
- Автовосстановление лотов после продажи.
- Автодеактивация лотов, если товары закончились.
- Вечный онлайн.
- Уведомления в Telegram.
- Полноценная ПУ в Telegram.

### Уведомления и ПУ в Telegram
- Возможность установки нескольких чатов для уведомлений.
- Уведомления о поднятии лотов.
- Уведомления о новых заказах.
- Уведомления о выдаче товара.
- Уведомления о новых сообщениях.
- Возможность отвечать на сообщения прямо из Telegram.
- Возможность полностью настраивать автовыдачу / автоответчик и все остальные модули.
- Возможность добавлять автовыдачу для лотов, получая лоты прямо с FunPay.

### Дополнительные возможности
- Использование переменных в тексте для автоответа / автовыдачи.

## Установка

### Windows (Docker)
Для удобства использования доступен запуск через Docker. Это позволяет быстро развернуть бота без необходимости установки дополнительных зависимостей.

1. Установите [Docker Desktop](https://www.docker.com/products/docker-desktop/).
   - Следуйте инструкциям установщика.
   - После установки убедитесь, что Docker запущен (иконка Docker должна быть в системном трее).
2. Скачайте архив с проектом или клонируйте репозиторий:
   - Если используете Git, выполните команду:
     ```bash
     git clone https://github.com/nirerevi/FunPayDockered.git
     ```
   - Если не используете Git, скачайте архив и распакуйте его в удобное место.
3. Перейдите в папку с проектом:
   ```bash
   cd FunPayVertex
   ```
4. Запустить docker-compose:
    ```bash
      docker-compose up
    ```

### Linux (Ubuntu)
1. Выполните команду:
   ```bash
   wget https://raw.githubusercontent.com/nirerevi/FunPayDockered/main/linux-install.sh -nc && bash linux-install.sh
   ```
   