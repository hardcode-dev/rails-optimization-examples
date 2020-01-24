```bash
brew install rbspy
DATA_FILE=data_large.txt ruby work.rb # запуск долгого процесса
sudo rbspy record --pid 58587 # подключение к работающему процессу
sudo rbspy record ruby my-script.rb # постоение flamegraph
```
