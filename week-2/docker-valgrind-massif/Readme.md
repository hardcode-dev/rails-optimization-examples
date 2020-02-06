# Docker-way to use valgrind massif-visualizer on Mac

## Prepare
- brew cask install xquartz # для проброса gui из докера на mac
- reboot
- в xquartz preferences на вкладке Security поставить обе галочки, в том числе "Allow connections from network clients"
- https://sourabhbajaj.com/blog/2017/02/07/gui-applications-docker-mac/

## Run

```bash
./build-docker.sh # собрать докер-image по Dockerfile
./profile.sh # выполнить профилирование в valgrind
./visualize.sh # открыть окно massif-visualizer, там открыть файл, полученный на шаге profile (massif.out.1)
```
