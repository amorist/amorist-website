+++ 
draft = false
date = 2019-01-23T09:15:20+08:00
title = "Electron实现menubar和desktop模式自动切换"
slug = "" 
tags = ["Electron", "MacOS"]
categories = ["教程", "经验"]
thumbnail = "<no value>"
description = ""
comments = true 
+++


## 效果图
![kapture 2018-12-20 at 15 05 14](https://user-images.githubusercontent.com/14037268/50269412-26c48000-0469-11e9-97a3-c194c07902bb.gif)


## 实现原理

当拖动mainWindow(desktop mode)到桌面顶部一定距离时，显示或创建menubarWindow(menubar mode)，隐藏mainWindow(desktop mode)。

当拖动menubarWindow(menubar mode)到离开桌面顶部一定距离，隐藏menubarWindow(menubar mode)，显示或创建mainWindow(desktop mode)。

## 主要步骤

监听窗口移动事件 实时获取当前窗口位置，如果position距离顶部小于一定数值（这里我设置了100），隐藏当前移动的窗口，展示目标窗口
```
mainWindow.on('move', () => {
    const [x, y] = mainWindow.getPosition()
    if (y <= 100) {
      mainWindow.hide()
      showMenubarWindow()
    }
})
```

展示menubarWindow时，获取tray的位置，据此计算出menubarWindow应该展示的位置，并设置menubarWindow的位置
```
webContents.on('dom-ready', () => {
    const position = getWindowPosition()
    setWindowPosition(menubarWindow, position.x, position.y)
    webContents.insertCSS(
      fs.readFileSync(
        path.join(__dirname, '../public/static/css/arrow.css'),
        'utf8',
      ),
    )
    menubarWindow.show()
    menubarWindow.focus()
})

function getWindowPosition() {
  const windowBounds = menubarWindow.getBounds()
  const trayBounds = tray.getBounds()

   // Center window horizontally below the tray icon
  const x = Math.round(
    trayBounds.x + trayBounds.width / 2 - windowBounds.width / 2,
  )

   // Position window 4 pixels vertically below the tray icon
  const y = Math.round(trayBounds.y + trayBounds.height + 4)

   return { x, y }
}
```

本文只讲了原理和大概实现思路，实际操作的时候，可以根据具体需求编写。 这部分完整代码参考地址： https://github.com/devhubapp/devhub/pull/47/files