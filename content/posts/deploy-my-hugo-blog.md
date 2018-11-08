+++ 
draft = false
date = 2018-11-08T11:56:26+08:00
title = "使用rsync部署hugo"
slug = "" 
tags = ["hugo", "deploy", "rsync"]
categories = ["教程"]
thumbnail = "<no value>"
description = ""
comments = true 
+++

```bash
#!/bin/sh

rm -rf public && hugo && rsync -avz --delete public/ root@amor:/www/amorist
```
