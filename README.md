# Kittygram

Kittygram — это веб-приложение, которое позволяет пользователям делиться постами о своих котах, загружать их фотографии и просматривать публикации других пользователей.

## Технологии

Проект построен на следующих технологиях:

- **Frontend:** React
- **Backend:** Django
- **Сервер прокси:** Nginx
- **База данных:** PostgreSQL
- **Контейнеризация:** Docker
- **CI/CD:** GitHub Actions

## Основные возможности

- Создание и публикация постов с фотографиями котов.
- Просмотр постов других пользователей.
- Интуитивно понятный интерфейс.

## Установка и запуск

### Локальный запуск

1. Убедитесь, что на вашем компьютере установлен Docker и Docker Compose.
2. Клонируйте репозиторий:
   ```bash
   git clone https://github.com/yourusername/kittygram_final.git
   cd kittygram_final
   ```
3. Создайте файл `.env` в корне проекта и заполните его необходимыми переменными окружения. Пример:
   ```env
   POSTGRES_USER=example_user
   POSTGRES_PASSWORD=example_password
   POSTGRES_DB=example_db
   SECRET_KEY=example_secret_key
   ```
4. Запустите приложение:
   ```bash
   docker compose up --build
   ```
5. Приложение будет доступно по адресу `http://localhost:9000`.

### Продакшн-среда

Для автоматического деплоя используется GitHub Actions. При пуше в ветку `main` запускается pipeline, который выполняет:

- Тестирование backend и frontend.
- Сборку Docker-образов для всех сервисов.
- Публикацию образов в Docker Hub.
- Деплой на удалённый сервер.

#### Требования к серверу:

- Установленный Docker и Docker Compose.
- Открытые порты для взаимодействия (например, 80, 9000).
- Настроенный SSH-доступ.

#### Настройка GitHub Secrets:

Перед деплоем необходимо указать в GitHub Secrets следующие данные:

- `SECRET_KEY` — секретный ключ для Django.
- `POSTGRES_USER` — имя пользователя базы данных.
- `POSTGRES_PASSWORD` — пароль базы данных.
- `POSTGRES_DB` — имя базы данных.
- `HOST` — адрес удалённого сервера.
- `USER` — имя пользователя для SSH.
- `SSH_KEY` — приватный SSH-ключ.
- `SSH_PASSPHRASE` — пароль для приватного SSH-ключа (если используется).
- `DOCKER_USERNAME` и `DOCKER_PASSWORD` — учётные данные для Docker Hub.
- `TELEGRAM_TO` и `TELEGRAM_TOKEN` — данные для отправки уведомлений в Telegram.

## CI/CD

Процесс CI/CD настроен на автоматизацию всех этапов разработки и деплоя:

1. **Тестирование:**
   - Backend тестируется с помощью Django тестов и Flake8.
   - Frontend тестируется с использованием Jest.
2. **Сборка и публикация образов:**
   - Сервисы backend, frontend и nginx собираются в Docker-образы и пушатся в Docker Hub.
3. **Деплой:**
   - Docker Compose файл копируется на сервер.
   - Выполняются команды для остановки, обновления и перезапуска контейнеров.

## Структура проекта

```
kittygram_final/
├── backend/              # Backend на Django
├── frontend/             # Frontend на React
├── nginx/                # Конфигурация Nginx
├── docker-compose.yml    # Файл для локального запуска
├── docker-compose.production.yml  # Файл для продакшн-среды
├── .github/workflows/    # CI/CD pipelines
└── README.md             # Описание проекта
```

## Автор

Автор: @HikkiAdvent.

