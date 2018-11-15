+++ 
draft = false
date = 2018-11-15T15:10:29+08:00
title = "Disabling Autocorrect in Zsh"
slug = "" 
tags = ["zsh"]
categories = ["教程"]
thumbnail = "<no value>"
description = ""
comments = true 
+++

```
amor@amor-mbp~ zsh --version
zsh 5.3 (x86_64-apple-darwin18.0)
```

```
vim .zshrc
```

```
# User configuration
setopt CSH_NULL_GLOB
unsetopt correct_all
```

```
amor@amor-mbp~ source .zshrc
```