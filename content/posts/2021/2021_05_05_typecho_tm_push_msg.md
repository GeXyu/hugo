---
title: Typecho增加微信推送等多个推送通道
date: 2021-05-05T11:12:20+08:00
lastmod: 2021-05-05T11:12:20+08:00
draft: false                       # 是否是草稿
tags: ['甜沫']                             # 标签[,]
categories:                        # 分类 [,]
author: "ge"                  # 作者
---
Typecho本身自带了评论功能，也提供了强大的插件功能。我们可以通过编写插件来实现新增评论提醒功能。[甜沫Chain](https://tm.tnt.pub/)一个聚合的消息推送工具。通过宽松的API方式，可以给微信,TG,QQ等多个平台推送消息。
## Comment2TM插件
- [下载插件](https://github.com/GeXyu/Comment2TM)并解压，然后将插件解压后的目录名改为`Comment2TM`，然后上传到你的 Typecho 的`/usr/plugins`，并在 Typecho 后台开启插件
- 到甜沫推送里申请你的专属 TMKEY，并根据需求配置您的推送通道
- 将你申请到的 TMKEY 填到插件设置里，保存即可

### 步骤如下

**启用插件**

![甜沫推送](https://gitee.com/XiuYuGe/resource/raw/master/2020/20210505112258.png)

**填写TMKEY**

![甜沫推送](https://gitee.com/XiuYuGe/resource/raw/master/2020/20210505112351.png)


## 效果

### 微信
![甜沫推送](https://github.com/GeXyu/Comment2TM/raw/master/wechat.png)
### QQ
![甜沫推送](https://github.com/GeXyu/Comment2TM/raw/master/qq.png)
### TG
![甜沫推送](https://github.com/GeXyu/Comment2TM/raw/master/tg.png)