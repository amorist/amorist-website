+++ 
draft = true
date = 2019-11-15T14:30:59+08:00
title = "在github actions中使用定时任务"
slug = "" 
tags = []
categories = []
thumbnail = "<no value>"
description = ""
comments = true 
+++


```yaml
on:
  schedule:
    # * is a special character in YAML so you have to quote this string
    - cron:  '0 0 * * *'
```

```bash
┌───────────── minute (0 - 59)
│ ┌───────────── hour (0 - 23)
│ │ ┌───────────── day of the month (1 - 31)
│ │ │ ┌───────────── month (1 - 12 or JAN-DEC)
│ │ │ │ ┌───────────── day of the week (0 - 6 or SUN-SAT)
│ │ │ │ │
│ │ │ │ │
│ │ │ │ │
* * * * *
```
