# Задаем базовый (родительский) образ
FROM nginx
USER root
# Задаем рабочую дирректорию для инструкций dockerfile
WORKDIR /home/simple_docker/src
# копируем нужныйкод из локальной данной директории в рабочую директорию образа
COPY ./mini_server.c /home/simple_docker/src/mini_server.c
COPY ./run.sh /home/simple_docker/src/run.sh
COPY ./nginx.conf /etc/nginx/nginx.conf
# устанавливаем необходимые библиотеки в образ которых нам будет нехватать в исходном образе
RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev
# настраиваем команду которая должна быть запущена в контейнере во время его выполнения
ENTRYPOINT ["sh", "./run.sh"]
