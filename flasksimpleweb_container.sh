#!/bin/bash

docker run  -d -t --rm -p 12345:12345 -v /apps/PythonProjects/FlaskSimpleWeb/resources:/usr/src/app/resources  --name flasksimplewebapp flasksimpleweb

clear

docker ps


