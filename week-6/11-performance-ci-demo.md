https://github.com/spajic/performance-ci-demo/

Статус билда в travis - passing: https://travis-ci.com/spajic/performance-ci-demo

В `budget.json` задан бюджет на общее кол-во запросов

```json
{
  "budget": {
    "requests": {
      "total": 300
    }
  }
}
```

`travis.yml`
```yml
language: node_js
node_js:
  - "10"

sudo: required

services:
  - docker

script:
- docker run --privileged -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io --budget.configPath /sitespeed.io/budget.json -n 1 https://dev.to
# - yarn run size

after_success:
  - yarn run lh -- --perf=90 https://dev.to
```

Сделаем PR c уменьшением бюджета - получим failed build

## github actions
https://github.com/spajic/performance-ci-demo/actions

.github/workflows/main.yml
```yml
name: CI

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: run sitespeedio test
      uses: docker://sitespeedio/sitespeed.io:12.0.1-action
      with:
        args: https://dev.to -n 1 --budget.configPath /github/workspace/.github/budget.json
```
