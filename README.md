# Baidu netdisk image
Run baidu netdisk in docker container, access by noVNC.
## Build
```shell
docker build -t docker-baidunetdisk .
```
## Run
```shell
docker run --rm -p 5800:5800 -p 5900:5900 docker-baidunetdisk
```
Open "http://host-ip:5800" in browser.
