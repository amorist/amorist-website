+++ 
draft = false
date = 2018-12-13T20:57:47+08:00
title = "golang判断中文字符"
slug = "" 
tags = ["golang"]
categories = ["教程"]
thumbnail = "<no value>"
description = ""
comments = true 
+++


通过 unicode.Is(rangeTab *unicode.RangeTable, r rune) 判断字符是否为中文。

示例代码

```go
	str := "底迪最可爱"
	for _, r := range str {
		if unicode.Is(unicode.Han, r) {
			fmt.Print(string(r))
		}
	}
```