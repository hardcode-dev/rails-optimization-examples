https://www.sitespeed.io/

https://github.com/sitespeedio/

https://www.sitespeed.io/documentation/sitespeed.io/

https://www.peterhedenskog.com/blog/2015/04/open-source-performance-dashboard/

## demo
cd sitespeedio
docker-compose up

docker run --privileged --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io:12.0.1-plus1 https://busfor.ru --gpsi.key your.gpsi.key --graphite.host host.docker.internal --verbose -n 3 --webpagetest.host webpagetest.org --webpagetest.key your.wpt.key --webpagetest.location Dulles_Edge --budget.configPath myBudget.json --budget.output json

### Test AMP https://busfor.ru/автобусы/Киев/Львов/amp
docker run --privileged --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io:12.0.1-plus1 https://busfor.ru/%D0%B0%D0%B2%D1%82%D0%BE%D0%B1%D1%83%D1%81%D1%8B/%D0%9A%D0%B8%D0%B5%D0%B2/%D0%9B%D1%8C%D0%B2%D0%BE%D0%B2/amp --gpsi.key your.gpsi.key --graphite.host host.docker.internal --verbose -n 3 --webpagetest.host webpagetest.org --webpagetest.key your.wpt.key --webpagetest.location Dulles_Edge --budget.configPath myBudget.json --budget.output json

open index.html
open grafana (localhost:3003)

## budget demo
docker run --privileged --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io:12.0.1-plus1 https://busfor.ru  --budget.configPath myBudget.json --budget.output json -n 1


## stack
- docker
- graphite
- grafana

docker run --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io https://www.sitespeed.io/

## Good for
- CI to find regressions early
- monotoring in production, alerting regressions

## Consists of
- https://github.com/sitespeedio/browsertime
- https://github.com/sitespeedio/coach
- plugins:
  - GPSI (Google PageSpeedInsights)
  - Lighthouse
  - Chrometrace
  - Decode and categorise 3d-party content

## Features
- Test your web site against Web Performance best practices using the Coach.

- Collect Navigation Timing API, User Timing API and Visual Metrics from Firefox/Chrome using Browsertime.

- Run your custom-made JavaScript and collect whichever metric(s) you need.

- Test one or multiple pages, across one or many runs to get more-accurate metrics.

- Create HTML-result pages or store the metrics in Graphite.

- Write your own plugins that can do whatever tests you want/need.

- WebPageReplay

- https://www.sitespeed.io/documentation/sitespeed.io/scripting/
- https://www.sitespeed.io/documentation/sitespeed.io/connectivity

## Отчёты
- Summary
- Detailed Summary
- Domains
- Toplist
- Assets
- Pages!
  - Summary
  - Waterfall
  - Metrics
  - Download video!
  - Download HAR
  - Filmstrip
  - Coach
  - PageXray
  - optional plugins for PageSpeedInsights, Lighthouse

  https://chrome.google.com/webstore/detail/coach-panel/olecfjmnejnkjipoicfpneceppjeaemo

  https://github.com/sitespeedio/coach

Connectivity and throttle via docker
Emulate mobile device in chrome via command args

Можно запускать на мобильном девайсе!

WebPageReplay - replay page locally, get rid of latency, убрать источник неопределённости из метрик, проще получать стабильные метрики для оптимизации/отлова регрессий

https://www.sitespeed.io/documentation/sitespeed.io/webpagereplay/

## Dashboard

https://www.sitespeed.io/documentation/sitespeed.io/performance-dashboard/#what-you-need

## Alerts
https://www.sitespeed.io/documentation/sitespeed.io/alerts/

## WebPageTest
plugin
need API key

## Performance budget
https://www.sitespeed.io/documentation/sitespeed.io/performance-budget/

Если запустить sitespeed.io с сконфигурированным бюджетом, он завершится с exit_status > 0, если не уложится в бюджет

docker run --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io:12.0.1 https://www.sitespeed.io/ --budget.configPath myBudget.json -b chrome -n 11


```json
{
"budget": {
    "timings": {
      "firstPaint": 1000,
      "pageLoadTime": 2000,
      "fullyLoaded": 2000,
      "FirstVisualChange": 1000,
      "LastVisualChange": 1200,
      "SpeedIndex": 1200,
      "PerceptualSpeedIndex":1200,
      "VisualReadiness": 200,
      "VisualComplete95": 1190
    },
    "requests": {
      "total": 89,
      "html": 1,
      "javascript": 0,
      "css": 1,
      "image": 50,
      "font": 0
    },
    "transferSize": {
      "total": 400000,
      "html": 20000,
      "javascript": 0,
      "css": 10000,
      "image": 200000,
      "font": 0
    },
    "thirdParty": {
      "transferSize": 0,
      "requests": 0
    },
    "score": {
      "accessibility": 100,
      "bestpractice": 100,
      "privacy": 100,
      "performance": 100
    }
  }
}
```

### With WPT

```json
{
"budget": {
  "webpagetest": {
      "SpeedIndex": 1000,
      "lastVisualChange": 2000,
      "render": 800,
      "visualComplete": 2000,
      "visualComplete95": 2000,
      "TTFB": 150,
      "fullyLoaded": 3000
    }
  }
}
```

### With Lighthouse

```json
{
"budget": {
  "lighthouse": {
      "performance": 90,
      "accessibility": 90,
      "best-practices": 90,
      "seo": 90,
      "pwa": 90
    }
  }
}
```

### With GPSI

```json
{
"budget": {
  "gpsi": {
      "speedscore": 90
    }
  }
}
```

## Alerts
Алерты по собранным данным удобно сделать средствами Grafana

https://www.sitespeed.io/documentation/sitespeed.io/alerts/

## CI
https://www.sitespeed.io/documentation/sitespeed.io/continuous-integration/

## GPSI + LightHouse + verbose + WPT + budget
docker run --privileged --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io:12.0.1-plus1 https://busfor.ru --gpsi.key your.gpsikey --graphite.host host.docker.internal --verbose --budget.configPath myBudget.json -n 1

docker run --privileged --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io:12.0.1-plus1 https://busfor.ru --gpsi.key your.gpsikey --graphite.host host.docker.internal --verbose --budget.configPath myBudget.json -n 1 --budget.output json --webpagetest.host webpagetest.org --webpagetest.key your.webpagetest.key --webpagetest.location Dulles_Edge
