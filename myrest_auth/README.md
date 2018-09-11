myrest_auth
=====

An OTP application

Build
-----

    $ rebar3 compile

Run
---

    $ rebar3 shell

Open terminal and run the following

```
curl -i http://localhost:8080
```

without authentication, the result:

```    
HTTP/1.1 401 Unauthorized
content-length: 0
date: Tue, 11 Sep 2018 06:20:25 GMT
server: Cowboy
www-authenticate: Basic realm="cowboy"
```

```
curl -i -u "Hulk:StrongestAvenger" http://localhost:8080
```
with authentication:
```
HTTP/1.1 200 OK
content-length: 13
content-type: text/plain
date: Tue, 11 Sep 2018 06:31:33 GMT
server: Cowboy
```
