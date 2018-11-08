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

### 脚本

```bash
#!/bin/sh

rm -rf public && hugo && rsync -avz --delete public/ root@amor:/www/amorist
```

### rsync相关命令解释


同步文件的时候，在目标中删除源中没有的文件👇
```
--delete
```

归档模式，表示以递归方式传输文件，并保持所有文件属性👇
```
-a, --archive               archive mode; same as -rlptgoD (no -H) 
```

详细模式输出👇
```
-v, --verbose               increase verbosity
```

传输时进行压缩处理👇
```
-z, --compress              compress file data during the transfer
    --compress-level=NUM    explicitly set compression level
```

源文件目录👇
```
public/
```

目标文件目录👇
```
root@amor:/www/amorist
```

