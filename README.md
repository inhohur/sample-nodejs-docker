# sample-nodejs-docker

node.js 로 간단한 서버를 만들어 Dockerize 하는 것이 목적입니다.

# 먼저 코드를 빌드합니다.
tsc 

# docker 이미지를 빌드합니다. Dockerfile 에 정의된 대로 수행합니다.
docker build -t sample-nodejs-docker .

# 실행해봅니다.
docker run --rm -p 80:80 sample-nodejs-docker

