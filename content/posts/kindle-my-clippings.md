+++ 
draft = false
date = 2018-11-02T09:59:03+08:00
title = "使用python获取kindle my clippings"
slug = "" 
tags = ["kindle", "python"]
categories = ["教程"]
thumbnail = "<no value>"
description = ""
+++


```py
note_path='/Volumes/Kindle/documents/My Clippings.txt'
f=open(note_path,'r+')
digest_path='/Users/amor/Documents/'
while True:
    onenote=[]
    for i in range(0,5):
        line=f.readline()
        if not line:
            exit()
        onenote.append(line)
    book_note=open('%s%s.txt'%(digest_path,onenote[0]),'a+')
    book_note.write(onenote[3]+'\n')
    book_note.close()
```