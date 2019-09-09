+++ 
draft = false
date = 2019-09-09T18:56:55+08:00
title = "MacOS终端获取IP"
slug = "" 
tags = ["IP", "MacOS"]
categories = ["教程", "经验"]
thumbnail = "<no value>"
description = ""
comments = true 
+++

可以使用如下命令获取ip地址

```bash
ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'
```

oh my zsh alias配置

```zsh
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
```
