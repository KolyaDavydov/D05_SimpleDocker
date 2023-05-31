# Задаем базовый (родительский) образ
FROM nginx
# Задаем рабочую дирректорию для инструкций dockerfile
WORKDIR /home/simple_docker/src
# копируем нужныйкод из локальной данной директории в рабочую директорию образа
COPY ./mini_server.c /home/simple_docker/src/mini_server.c
COPY ./run.sh /home/simple_docker/src/run.sh
COPY ./nginx.conf /etc/nginx/nginx.conf
# устанавливаем необходимые библиотеки в образ которых нам будет нехватать в исходном образе
RUN apt-get update && apt-get install -y gcc spawn-fcgi libfcgi-dev; \
    apt-get clean && rm -rf /var/lib/apt/lists/*; \
    chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /home; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    chmod u-s /usr/bin/gpasswd; \
    chmod u-s /usr/bin/newgrp; \
    chmod u-s /bin/su; \
    chmod u-s /bin/mount; \
    chmod u-s /bin/umount; \
    chmod u-s /usr/bin/chsh; \
    chmod u-s /usr/bin/chfn; \
    chmod u-s /usr/bin/chsh; \
    chmod 255 /usr/bin/expiry; \
    chmod 255 /usr/bin/wall; \
    chmod 255 /sbin/unix_chkpwd; \
    chmod 255 /usr/bin/chage; \
    chmod 755 /usr/bin/passwd

USER nginx
HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || exit 1
# настраиваем команду которая должна быть запущена в контейнере во время его выполнения
ENTRYPOINT ["sh", "./run.sh"]
