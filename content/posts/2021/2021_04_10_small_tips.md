---
title: 几个小算法
date: 2021-04-10T15:34:49+08:00
lastmod: 2021-04-10T15:34:49+08:00
draft: true                       # 是否是草稿
tags:                              # 标签[,]
categories:                        # 分类 [,]
author: "ge"                  # 作者
---

几年工作下来，经历过几个项目，代码质量参差不齐，再差的项目也有眼前一亮的代码。一篇笔记，也算是把看到的前人智慧做了一个汇总。
### 分页算法

分页计算通常需要计算出总页数，一般写法是先判断总记录数和页大小是否可以整除，如果可以整除，那么就返回总记录数/页大小，如果不能整除则在总页数/页大小之后再+1。

伪代码如下：

```java
// total是总记录数， pagesize是页大小
// totalPageNum 是总页数
if(total % pagesize == 0){
    return total / pagesize;
}else{
    return total / pagesize + 1;
}
```

我们可以利用int舍去小数的特性，优化上面的代码

```java
totalPageNum = (total + pagesize - 1) / pagesize
```



### 随机数算法
随机数工作中是比较常用的，大多在验证码方面，或者是单号生成，年月日再加几位随机数。指定位数的随机数算法百度上很多，千篇一律，大多是通过for循环，循环次数控制随机数的位数，然后通过Random的next(10)方法返回一个小于10大于0的数字。其实利用Random的next方法的特性让代码更简洁。

譬如像生成6位随机数，就可以这样写。

```java
Random r = new Random()
String code = String.valueOf(r.nextInt(900000) + 100000);
```

原因是nextInt这个方法生成数字的范围是0-bound（bound是你传入的参数），这里bound是90000，也就是说会生成一个小于90000的数字，然后再加上100000，刚好是6位。

下面是Random的nextInt方法的注释，`bound`是传参

```java
the next pseudorandom, uniformly distributed {@code int}
value between zero (inclusive) and {@code bound} (exclusive)
from this random number generator's sequence
```



