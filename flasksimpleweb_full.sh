#!/bin/bash




echo "FROM python:latest" > Dockerfile

echo "RUN mkdir -p /usr/src/app/" >> Dockerfile

echo "WORKDIR /usr/src/app/" >> Dockerfile

echo "COPY . /usr/src/app/"  >> Dockerfile

echo "RUN pip install --upgrade pip" >> Dockerfile

echo "RUN pip install --no-cache-dir -r requirements.txt" >> Dockerfile

echo "EXPOSE 12345" >> Dockerfile

echo "ENV TZ Asia/Dubai" >> Dockerfile

echo 'CMD ["python", "app.py"]' >> Dockerfile


docker  build -t flasksimpleweb .

docker run  -d -t --rm -p 12345:12345 -v /apps/PythonProjects/FlaskSimpleWeb/resources:/usr/src/app/resources  --name flasksimplewebapp flasksimpleweb

docker ps


