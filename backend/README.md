## Как запустить проект:


Клонировать репозиторий и перейти в него в командной строке:

```bash
git clone https://github.com/<ваш_аккаунт>/kittygram_final
```
```bash
cd kittygram_backend
```
Создать свой .env файл и заполнить его нужными параметрами, например:

```
DB_ENGINE=django.db.backends.postgresql
POSTGRES_DB=your_db
POSTGRES_USER=your_user
POSTGRES_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432
ALLOWED_HOSTS=example.com,www.example.com
```
Построить образ:

```bash
docker build -t kittygram_backend .
```
Запустить контейнер:

```bash
docker run -d -p 8000:8000 --env-file .env kittygram_backend
```
Проект будет доступен по адресу `http://localhost:8000`.


Для выполнения миграций или других команд в контейнере, используйте команду:

```bash
docker exec -it <container_name> python3 manage.py migrate
```
Где `<container_name>` — имя вашего контейнера, которое можно узнать через команду docker ps.


Для остановки контейнера используйте команду:

```bash
docker stop <container_name>
```
