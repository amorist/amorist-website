+++ 
draft = true
date = 2019-11-15T14:10:59+08:00
title = "使用Github actions管理Github star"
slug = "" 
tags = []
categories = []
thumbnail = "<no value>"
description = ""
comments = true 
+++

&emsp;&emsp;由于每天上班第一件事就是打开Github查看有意思或者对我非常有用的一些项目，所以star了很多项目，目前大概已经有[2.4k](https://github.com/amorist?tab=stars)了，因此需要管理一下，方便我查找和阅读。

&emsp;&emsp;主要使用了[starred](https://github.com/maguowei/starred)和[github actions](https://github.com/actions)，[starred](https://github.com/maguowei/starred)帮助我获取star并生成markdown文档，[github actions](https://github.com/actions)帮助我每天自动更新markdown文档。

&emsp;&emsp;我在github创建了一个仓库[awesome](https://github.com/amorist/awesome)（毕竟咱也是markdown工程师）用来展示我的github star。

1. 在仓库下创建`starred.py`，

```bash
#!/usr/bin/python
import os
starred_output = os.popen('starred --username amorist --sort > README.md', 'r')
print(starred_output.read())
```
[starred](https://github.com/maguowei/starred)使用
```bash

starred --help

Usage: starred [OPTIONS]

    GitHub starred

    creating your own Awesome List used GitHub stars!

    example:     starred --username maguowei --sort > README.md

Options:
    --username TEXT    GitHub username
    --token TEXT       GitHub token
    --sort             sort by language
    --repository TEXT  repository name
    --message TEXT     commit message
    --version          Show the version and exit.
    --help             Show this message and exit.
```

2. 12444

