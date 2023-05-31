#!/bin/bash
gcc mini_server.c -lpthread -lfcgi -o mini_server
service nginx start
nginx -s reload
spawn-fcgi -p 8080 -n mini_server

