---
title: wordpress增加微信推送
date: 2021-04-30T17:12:32+08:00
lastmod: 2021-04-30T17:12:32+08:00
draft: false                       # 是否是草稿
tags: ['甜沫']                             # 标签[,]
categories:                        # 分类 [,]
author: "ge"                  # 作者
---
用Wordpress建站的朋友都知道文章有评论回复是可以邮件提醒的，主机mail()函数或SMTP的方式都可以。但是能不能评论留言也有微信或者是TG推送提醒呢，其实也可以！我们需要准备一个甜沫推送的账号
## 甜沫部分
[甜沫Chain](https://tm.tnt.pub/)一个聚合的消息推送工具。支持API方式给微信,TG,QQ等多个平台推送消息。

注册成功后记得要配置好`推送的通道`，文档也比较丰富，按照文档一步一步的配置就可以了。[点我开始配置](https://tm.tnt.pub/setting)

## wordpress部分
在**主题目录**下找到functions.php文件，然后在文件的尾部追加以下代码:

```php
function tm_send($comment_id)
{
	$title = get_bloginfo('name'). '上有新的评论';
	$comment = get_comment($comment_id);
	$content = $comment->comment_author.' 同学在文章《'.get_the_title($comment->comment_post_ID).'》中给您的留言了';
	$key = '您的密钥';
	
	return $result = file_get_contents('https://api.tnt.pub/send/'.$key.'?title='.urlencode($title).'&content='.urlencode($content));
}
add_action('comment_post', 'tm_send');
```

## 效果
![甜沫推送](https://ftp.bmp.ovh/imgs/2021/04/b37f8b07309879bf.png)