+++ 
draft = false
date = 2018-11-05T09:50:01+08:00
title = "how to launch browser when used npm start"
slug = "" 
tags = ["npm"]
categories = ["教程"]
thumbnail = "<no value>"
description = "how to launch browser when used npm start"
comments = true 
+++

```
// Windows
"start":"start http://localhost:8081 & node bin/www"

// Mac
"start":"open http://localhost:8081 && node bin/www"

// Linux
"start":"xdg-open http://localhost:8081 && node bin/www"
```