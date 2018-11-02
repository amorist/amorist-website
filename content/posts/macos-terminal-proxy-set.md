+++ 
draft = false
date = 2018-11-01T16:22:28+08:00
title = "macos-terminal-proxy-set"
slug = "macos terminal proxy set" 
tags = ["proxy", "terminal"]
categories = ["教程"]
thumbnail = "<no value>"
description = ""
comments = true
+++


## 前提

1. http代理 例如端口号为 1081

2. 添加如下命令到 ` ~/.bash_profile`（如果使用系统终端) 或者 `~/.zshrc`（如果使用zsh)，更改完成之后请在当前终端执行 `source ~/.bash_profile` or `source ~/.zshrc`

```
alias setproxy="export http_proxy=http://127.0.0.1:1081 && export https_proxy=http://127.0.0.1:1081 && curl -i http://google.com"
alias unsetproxy="unset http_proxy && unset https_proxy && curl -i http://google.com"
``` 

## 使用

### setproxy

```
▶ setproxy
HTTP/1.1 200 OK
Date: Thu, 01 Nov 2018 08:24:27 GMT
Content-Type: text/html;charset=UTF-8
Transfer-Encoding: chunked
Connection: keep-alive
Vary: Accept-Encoding
Proxy-Connection: keep-alive

{"code":0,"data":{"ip":"185.22.152.57","country":"俄罗斯","area":"","region":"莫斯科","city":"莫斯科","county":"XX","isp":"XX","country_id":"RU","area_id":"","region_id":"RU_100","city_id":"RU_1003","county_id":"xx","isp_id":"xx"}}
```

### unsetproxy

```
▶ unsetproxy
HTTP/1.1 502 Bad Gateway
Date: Thu, 01 Nov 2018 08:24:57 GMT
Content-Type: text/html
Transfer-Encoding: chunked
Connection: keep-alive

<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html>
<head><title>502 Bad Gateway</title></head>
<body bgcolor="white"><script>
with(document)with(body)with(insertBefore(createElement("script"),firstChild))setAttribute("exparams","category=&userid=&aplus&yunid=&&trid=0be385ed15410606973666291e&asid=AQAAAABZuNpb3yfFVwAAAABkRabO6Vytnw==",id="tb-beacon-aplus",src=(location>"https"?"//g":"//g")+".alicdn.com/alilog/mlog/aplus_v2.js")
</script>

<h1>502 Bad Gateway</h1>
<p>The proxy server received an invalid response from an upstream server.</body>
```