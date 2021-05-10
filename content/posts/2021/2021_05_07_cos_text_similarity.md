---
title: 通过余弦函数计算相似度
date: 2021-05-07T17:12:28+08:00
lastmod: 2021-05-07T17:12:28+08:00
draft: false                       # 是否是草稿
tags: ['算法']                             # 标签[,]
categories: ['java']                       # 分类 [,]
author: "ge"                  # 
---
计算两个文本的相似度我们可以使用编辑距离和余弦相似性来解决.本文解释多维的余弦相似度公式是怎么推导来的.

## 推导

余弦函数在三角形中的计算公式为![img](https://pic1.zhimg.com/80/v2-9aed1a2566ab75a5c8d1560d4ffa0148_720w.jpg)

在图像表示:![img](http://www.ruanyifeng.com/blogimg/asset/201303/bg2013032002.png)

在直角坐标系中，向量表示的三角形的余弦函数是怎么样的呢？下图中向量a用坐标(x1,y1)表示，向量b用坐标(x2,y2)表示。![img](http://www.ruanyifeng.com/blogimg/asset/201303/bg2013032005.png)

向量a和向量b在直角坐标中的长度为

![img](https://pic4.zhimg.com/80/v2-b55f5d93ee95a218e190b1690983f8b3_720w.jpg)

，向量a和向量b之间的距离我们用向量c表示，就是上图中的黄色直线，那么向量c在直角坐标系中的长度为

![img](https://pic2.zhimg.com/80/v2-8b50b24402ff6c37211368c50ba41549_720w.jpg)

，将a，b，c带入三角函数的公式中得到如下的公式：

![img](https://pic4.zhimg.com/80/v2-619a05825b7670c45b73c11b4a6a84bb_720w.jpg)

收起来就是：

![img](http://www.ruanyifeng.com/blogimg/asset/201303/bg2013032007.png)

至此已经推导结束

## 说明

先过滤掉省市区等信息，取两个地址文字的并集，然后用01表示并集的文字是否出现在地址中，得到两个数组，再用通过[余弦定理](https://www.jianshu.com/p/22092647cb02)计算相似性。

以两个地址为例子:

```
句子A：我/喜欢/看/电视，不/喜欢/看/电影。

句子B：我/不/喜欢/看/电视，也/不/喜欢/看/电影。
```

### 第一步分词

```
我，喜欢，看，电视，电影，不，也。
```

### 第二步列出所有词





具象化就是：

![img](http://www.ruanyifeng.com/blogimg/asset/201303/bg2013032008.png)



从而**余弦值越接近1，就表明夹角越接近0度，也就是两个向量越相似，这就叫"余弦相似性"