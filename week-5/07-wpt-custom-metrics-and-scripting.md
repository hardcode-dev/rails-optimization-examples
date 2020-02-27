# WebPageTest Custom Metrics and Scripting

## Features
- Custom metrics Demo
- Custom scripting Demo

### Custom metrics

```
[script-tag-count]
return document.getElementsByTagName('script').length;
```

### Scripting

```
logData 0
navigate  https://dev.to/
logData 1
navigate  https://dev.to/top/week
```

```
logData 0
navigate  https://dev.to/

setValue  name=q  prometheus
logData 1
submitForm  name=search
```

### Документация скриптинга WebPageTest
https://sites.google.com/a/webpagetest.org/docs/using-webpagetest/scripting
