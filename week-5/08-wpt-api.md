# WebPageTest API

## Features
- API!
- request key here: https://www.webpagetest.org/getkey.php

## Example
https://www.webpagetest.org/runtest.php?f=json&k=your.key&url=http://dev.to

{"statusCode":200,"statusText":"Ok","data":{"testId":"190822_11_ed141141270b6476032538b2092cc1be","ownerKey":"fc293d26f03f4252bd0617dfedb47ace5861d332","jsonUrl":"https:\/\/www.webpagetest.org\/jsonResult.php?test=190822_11_ed141141270b6476032538b2092cc1be","xmlUrl":"https:\/\/www.webpagetest.org\/xmlResult\/190822_11_ed141141270b6476032538b2092cc1be\/","userUrl":"https:\/\/www.webpagetest.org\/result\/190822_11_ed141141270b6476032538b2092cc1be\/","summaryCSV":"https:\/\/www.webpagetest.org\/result\/190822_11_ed141141270b6476032538b2092cc1be\/page_data.csv","detailCSV":"https:\/\/www.webpagetest.org\/result\/190822_11_ed141141270b6476032538b2092cc1be\/requests.csv"}}


https://www.webpagetest.org/jsonResult.php?test=190822_11_ed141141270b6476032538b2092cc1be

В ответ - огромный json с результатами теста (см. report json)


## API Documentation
https://sites.google.com/a/webpagetest.org/docs/advanced-features/webpagetest-restful-apis
