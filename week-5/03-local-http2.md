# Local HTTP/2
## Config nginx reverse proxy with http/2 and server-push

```
server {
  listen  443 http2 ssl;
  #...

  location /{
    http2_push_preload on;
    #...
  }
}
```
