---
title: NexT主题配置
date: 2018-03-27 09:41:59
tags:
---

身为一个程序猿，在一年以前就有意搭建一个自己的个人博客，但去年搭了一个框架后，却没有更新过任何文章内容，一方面是是自身的拖延症在做祟，另一方面公司任务实在太重，可以利用的业余时间实在有限。今年终于下定决心，一定要抽时间将自己工作中，业余时间研究的技术总结写出来，一面是自己技术成长和学习的记录，一面是和更多人的一起分享探讨。

去年搭建的博客是借鉴 __[nmask](https://thief.one/)__ 所写的如何利用 [Hexo搭建博客教程](https://thief.one/2017/03/03/Hexo%E6%90%AD%E5%BB%BA%E5%8D%9A%E5%AE%A2%E6%95%99%E7%A8%8B/)，作者写的非常全面详细，无论是刚接触博客搭建的新手，还是想优化个人博客的老玩家，都有一些可以借鉴的地方，具体内容可以去查看，在此就不做赘述。

本文主要介绍 `NexT` 主题的配置说明，方便在选用 `NexT` 主题的玩家参考和借鉴。 
<!-- more -->
## 选用 NexT 主题

&emsp;&emsp;__`NexT`__ 是最受欢迎的hexo 主题之一，以其简洁优雅的特性受到很多博客玩家的青睐（[v6.0.0 以后版本](https://github.com/iissnan/hexo-theme-next)托管在 `github` 上，v6.0.0 以前版本点击[此链接](https://github.com/iissnan/hexo-theme-next)），点击此处查看 [`NexT`](http://notes.iissnan.com/) 主题的效果，更多其他主题，查看 hexo 官网[主题列表](https://hexo.io/themes/)。本文介绍的 NexT 是 v6.0.0 以后版本配置选项，部分选项可能和之前版本稍有差异，大家自行借鉴。

### 安装和使用

在博客根目录下，从 github 仓库中拉取 NexT 代码到 `themes/next` 文件夹下：
``` bash
$ git clone https://github.com/theme-next/hexo-theme-next themes/next
```

修改博客根目录下配置文件 `_config.yml`，主题选用一栏改为选用 NexT 主题（此处是博客根目录的 `_config.yml` 文件，而不是 `themes/next` 文件夹下的 `_config.yml` 文件，不要混淆了）：
```
···
# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
theme: next
···
```

### 更新 NexT 代码：
```
$ cd themes/next
$ git pull
```

## NexT 配置说明

### 1. 主题代码配置设置

```
# 如果设置为 false， 会将 `_data/next.yml` 文件和默认配置合并（重写）。
# 如果设置为 true，会依据 `_data/next.yml` 完全覆盖默认配置的设置项（覆盖）。只在 NexT 主题下生效。
# 并且如果设置为 true，所有的 NexT 的 `_config.yml` 文件配置必须复制到 `next.yml` 文件中。确保了解这个操作的影响。
# 如果你想在不编辑默认配置的情况下，通过 `next.yml` 文件注覆盖一些 NexT `_config.yml` 的选项，这个选项是有用的。
override: false

# 允许缓存一些内容。具体查看 NexT v6.0.0 版本的介绍。
cache:
  enable: true

# 重定义样式文件的位置。具体查看 NexT v6.0.0 版本的介绍。
# 如果被注释掉，会使用默认的样式文件位置。

# 比如，你想将定制的样式文件放在主题文件夹外，放到根目录下的 `source/_data` 文件夹中，设置如下：
# `styles: source/_data/styles.styl`
#custom_file_path:
  # Default paths: layout/_custom/*
  #head: source/_data/head.swig
  #header: source/_data/header.swig
  #sidebar: source/_data/sidebar.swig

  # Default path: source/css/_variables/custom.styl
  #variables: source/_data/variables.styl
  # Default path: source/css/_mixins/custom.styl
  #mixins: source/_data/mixins.styl
  # Default path: source/css/_custom/custom.styl
  #styles: source/_data/styles.styl

```

### 2. 网站信息设置

```
# 浏览：https://realfavicongenerator.net，获取 check favicons
# 把你的 favicons 放到 `hexo-site/source/` (推荐位置) 或者 `hexo-site/themes/next/source/images/` 文件夹下。

# 默认的 NexT favicons 放置在 `hexo-site/themes/next/source/images/` 文件夹下。
# 如果你想把你的 icons 放到 `hexo-site/source/` 根目录下, 删除路径中的 `/images` 前缀。

# 比如，你将你的 favicons 放在 `hexo-site/source/images` 文件夹下。
# 你必须重命名 & 重新定义 favicons 文件名字，否则，Next 的 icons 会覆盖你的 Hexo 下 icons。
favicon:
  small: /images/favicon-16x16-next.png
  medium: /images/favicon-32x32-next.png
  apple_touch_icon: /images/apple-touch-icon-next.png
  safari_pinned_tab: /images/logo.svg
  #android_manifest: /images/manifest.json
  #ms_browserconfig: /images/browserconfig.xml

# 把 rss 设为 false 以禁用反馈链接。
# 把 rss 设置为空可以使用网站的反馈链接。
# 把 rss 设置为你使用习惯的具体值。
rss: false

footer:
  # 指定站点的启动日期.
  # 如果为定义，将使用当前年份。
  # 从 2015 年开始

  # 年份和版权信息之间的 Icon。
  icon: 
    # fontawesome 中为 Icon 名称，查看：https://fontawesome.com/v4.7.0/icons
    # 推荐使用有动画效果的 `heart` 图标（#ff0000）。
    name: user
    # 设置为 true，icon 会产生动画效果。
    animated: true
    # 改变 icon 的颜色值，使用 Hex 编码。
    color: "#808080"

  # 如果未定义，见使用在 Hexo 配置中 设置的 `author` 信息。
  copyright: Kosong
  # -------------------------------------------------------------
  # Hexo 链接 （Hexo 所有版权）。
  powered: false

  theme:
    # 主题 & 设计信息链接 （主题 - NexT.scheme）。
    enable: false
    # 在设计信息之后显示 NexT 版本信息 (vX.X.X)。
    version: false
  # -------------------------------------------------------------
  # 可以自定义文本信息。
  #custom_text: Hosted by <a target="_blank" rel="external nofollow" href="https://pages.coding.me"><b>Coding Pages</b></a>
```

### 3. SEO 设置

```
# 在你的 hexo 中设置一个符合规范的链接标签, 这将有助于你的博客的 SEO。
# 详细信息查看: https://support.google.com/webmasters/answer/139066
# 提示: 在你打开这个标签前, 记得在 hexo 的 _config.yml 文件中启动你的 URL ( 比如. url: http://yourdomain.com )
canonical: true

# 改变站点副标题的头部结构 （可能主要是网站的描述信息） 以及 所有的 post/pages 标题以提高 SEO-优化。
seo: true

# 如果设置为 true, 将会在 index 页面添加 hexo 配置的网站副标题。
# 副标题: Subtitle
index_with_subtitle: false

```

### 4. 菜单设置

```
# 如果网站使用的是二级域名 (比如. domain.tld/blog)， 删除链接地址中的斜杠 (/archives -> archives).
# 用法: `Key: /link/ || icon`
# Key 是菜单条目的名称。 如果在翻译文件中找到了改值 - 将会使用翻译后的值； 如果未找到 - 会使用 Key 的名称. Key 对大小写敏感。
# 在 `||` 分隔符之前的值是目标链接。
# 在 `||` 分隔符之后的值 是FontAwesome icon 的名字。如果 Icon （无论有没有分隔符）未找到， 将会使用问号图表代替。
menu:
  home: / || home
  #about: /about/ || user
  #tags: /tags/ || tags
  #categories: /categories/ || th
  archives: /archives/ || archive
  #schedule: /schedule/ || calendar
  #sitemap: /sitemap.xml || sitemap
  #commonweal: /404/ || heartbeat

# 启用/禁用菜单 icons / badges.
menu_settings:
  icons: true
  badges: true
```
### 5. 样式设置

```
# 样式
# scheme: Muse
# scheme: Mist
scheme: Pisces
# scheme: Gemini
```

### 6. 侧边栏设置

```
# 侧边栏的 Posts / Categories / Tags.
site_state: true

# 社交账号链接
# 用法： `Key: permalink || icon`
# Key 是展示给访客的链接标签。
# `||` 分隔符之前的值是目标链接。
# Value after `||` delimeter is the name of FontAwesome icon. If icon (with or without delimeter) is not specified, globe icon will be loaded.
#`||` 分隔符之后的值是FontAwesome icon 的名字。如果Icon（无论有没有分隔符）未定义，会使用 globe icon。
#社交账号:
  GitHub: https://github.com/MuffinYu || github
  E-Mail: mailto:muffinxb@163.com || envelope
  #Google: https://plus.google.com/yourname || google
  #Twitter: https://twitter.com/yourname || twitter
  #FB Page: https://www.facebook.com/yourname || facebook
  #VK Group: https://vk.com/yourname || vk
  #StackOverflow: https://stackoverflow.com/yourname || stack-overflow
  #YouTube: https://youtube.com/yourname || youtube
  #Instagram: https://instagram.com/yourname || instagram
  #Skype: skype:yourname?call|chat || skype

social_icons:
  enable: true
  icons_only: false
  transition: false
  # 其他选项：加密url：将下面的设置选项改为 true。
  # 将会使用 https://www.base64encode.org 方法把上面的链接加密。
  # 比如加密后的链接： `GitHub: aHR0cHM6Ly9naXRodWIuY29tL3RoZW1lLW5leHQ= || github`
  exturl: false

# 在右上角显示在Github Follow me 的图标。
# 用法：`permalink || title`
# `||` 分隔符之前的值是目标永久链接
# `||` 分隔符之后的值是标题和 aria-标签 名称。
github_banner: https://github.com/MuffinYu || Follow me on GitHub

# 博客名单
links_icon: link
links_title: Links
links_layout: block
#links_layout: inline
#links:
  #Title: http://example.com/

# 侧边栏头像
# in theme directory(source/images): /images/avatar.gif
# in site  directory(source/uploads): /uploads/avatar.gif
avatar: /images/avatar.gif

# 侧边栏表格内容
toc:
  enable: true

  # 自动添加列表数量到表格
  number: true

  # 设置为 true，超过侧边栏宽度的句子将会折行显示。
  wrap: true

# 著作权 4.0 国际协议 （Creative Commons 4.0 International License）。
# http://creativecommons.org/
# 可选项: by | by-nc | by-nc-nd | by-nc-sa | by-nd | by-sa | zero
#creative_commons: by-nc-sa
#creative_commons:

sidebar:
  # 侧边栏位置，可选值： left | right (only for Pisces | Gemini)。
  position: left
  #position: right

  # 侧边栏展示，可选值（Muse | Mist 主题下可用）：
  #  - post    默认值，在请求时自动展开
  #  - always  在所有页面下展开
  #  - hide    在点击侧边栏展开按钮时展开
  #  - remove  移除侧边栏以及打开按钮
  display: post
  #display: always
  #display: hide
  #display: remove

  # 侧边栏中菜单栏向下隔离的距离，以像素为单位 （Pisces | Gemini 主题下可用）。
  offset: 12

  # 侧边栏显示返回顶部按钮（Pisces | Gemini 主题下可用）。
  b2t: true

  # 在 b2t 按钮上显示滚动百分比。
  scrollpercent: false

  # 在小屏幕下显示侧边栏 （Muse | Mist 主题下可用）。
  onmobile: false
```

### 7. 文章设置

```
# 自动滚动页面到在 <!-- more --> 标记下的章节。
scroll_to_more: true

# 自动保存文章/页面的滚动位置到 cookies 中。
save_scroll: false

# 在首页自动摘取文章的描述信息作为序言。
excerpt_description: true

# 自动摘录。不推荐。
# 请在文章中使用 <!-- more -->，来准确地控制摘录信息。
auto_excerpt:
  enable: false
  length: 150

# 文章元信息展示设置
post_meta:
  item_text: true
  created_at: true
  updated_at: false
  # 如果文章和创建时不同，只显示更新后内容。
  updated_diff: false
  categories: true

# 文章字数显示设置
# 依赖服务：https://github.com/theme-next/hexo-symbols-count-time
symbols_count_time:
  separated_meta: true
  item_text_post: true
  item_text_total: false
  awl: 5
  wpm: 200

# 定义代码块的圆角。
# 设置为空，则采用默认值 1
codeblock:
  border_radius: 

# 微信订阅
#wechat_subscriber:
  #enabled: true
  #qcode: /path/to/your/wechatqcode ex. /uploads/wechat-qcode.jpg
  #description: 比如： 扫描公众号二维码订阅我的博客

# 打赏
#reward_comment: 点击此处打赏
#wechatpay: /images/wechatpay.jpg
#alipay: /images/alipay.jpg
#bitcoin: /images/bitcoin.png

# 相关的热点文章
# 依赖服务: https://github.com/tea3/hexo-related-popular-posts
related_posts:
  enable: false
  title: # 通用标题，设置为空，则采用默认值 one
  display_in_home: false
  params:
    maxCount: 5
    #PPMixingRate: 0.0
    #isDate: false
    #isImage: false
    #isExcerpt: false

# 在文章中声明协议
post_copyright:
  enable: false
  license: <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" rel="external nofollow" target="_blank">CC BY-NC-SA 4.0</a>
```

### 8. 通用主题设置

```
# 减少在小屏幕设备上的  padding / margin 间隔值
mobile_layout_economy: false

# 安卓 Chrome 头部控制面板的颜色 （$brand-bg / $headband-bg => $black-deep）。
android_chrome_color: "#222"

# 用户 Logo.
# !!目前只在默认设置下可用
# Options:
#   enabled: [true/false] - Replace with specific image
#   image: url-of-image   - Images's url
custom_logo:
  enabled: false
  image:

# 代码高亮风格
# 可选项: normal | night | night eighties | night blue | night bright
# https://github.com/chriskempson/tomorrow-theme
highlight_theme: normal

# 在 archive 页面启用 "cheers"。
cheers_enabled: true

# 定义最大内容宽度
# !!目前仅在 Gemini Scheme 下可用
# 如果未定义，则采用默认值 75% （建议不小于 1000px）
#max_content_width: 1000px

# 定义侧边栏宽度
# !!目前仅在 Gemini Scheme 下可用
# 如果未定义，则采用默认值 240
sidebar_width:

# ---------------------------------------------------------------
# 字体设置
# - 在谷歌字体库中选用字体 (https://www.google.com/fonts)
# - 所有在这里设置的字体将会具备以下样式： 
#     light, light italic, normal, normal italic, bold, bold italic
# - 注意，设置太多的字体的会导致网站运行变慢
# - 在 5.0.1 中有说明
# ---------------------------------------------------------------
# CAUTION! Safari Version 10.1.2 bug: https://github.com/iissnan/hexo-theme-next/issues/1844
# 注意！ Safari 10.1.2 版本bug: https://github.com/iissnan/hexo-theme-next/issues/1844
# 为避免在 Pisces / Gemini 主题中头部和侧边栏的间距问题，建议为 `global` （还有 `logo`）使用兼容性好的字体：
# Arial | Tahoma | Helvetica | Times New Roman | Courier New | Verdana | Georgia | Palatino | Garamond | Comic Sans MS | Trebuchet MS
# ---------------------------------------------------------------
font:
  enable: false

  # 字体链接：比如 //fonts.googleapis.com (Default)。
  host:

  # 字体选项:
  # `external: true` 会从上面的链接中加载字体。
  # `family: Times New Roman`。不需要任何引号。
  # `size: xx`。使用 'px' 为单位。

  # 所有在 <body> 元素中的字体会采用全局字体设置。
  global:
    external: true
    family: Lato
    size:

  # 标题字体设置 (H1, H2, H3, H4, H5, H6)。
  # 否则采用 `global` 字体设置。
  headings:
    external: true
    family:
    size:

  # 文章字体设置。
  # 否则采用 `global` 字体设置。
  
  posts:
    external: true
    family:

  # Logo 字体设置。
  # 否则采用 `global` 字体设置。
  logo:
    external: true
    family:
    size:

  # <code> 和代码块的字体设置。
  codes:
    external: true
    family:
    size:
```

### 9. 第三方服务设置
```
# 数学方程展示
math:
  enable: false

  # 默认（true）将会在请求中加上 mathjax/katex 脚本
  # That is it only render those page who has 'mathjax: true' in Front Matter.
  # 这意味着只会在 Front Matter 中有 'mathjax: true' 的页面渲染它。
  # 设置为 false 将会在每个页面都加载 mathjax/katex 脚本。
  per_page: true

  engine: mathjax
  #engine: katex

  # hexo-rendering-pandoc (or hexo-renderer-kramed) 需要 MathJax 的支持。
  mathjax:
    # 默认使用 2.7.1，jsdeliver CDN，在任何地方都可以使用，包括天朝。（译者：很懂天朝国情啊）
    cdn: //cdn.jsdelivr.net/npm/mathjax@2.7.1/MathJax.js?config=TeX-AMS-MML_HTMLorMML
    # 对于 newMathJax CDN（cdnjs.cloudflare.com），将会降级采用 oldMathJax（cdn.mathjax.org）。
    #cdn: //cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML
    # MathJax.js 在 CloudFlare CDN (cdnjs.cloudflare.com) 的直接链接。
    #cdn: //cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-MML-AM_CHTML
    # 自动检测最新版本 MathJax.js 链接并且加载，来自 Bootcss。
    #cdn: //cdn.bootcss.com/mathjax/2.7.1/latest.js?config=TeX-AMS-MML_HTMLorMML

  # hexo-renderer-markdown-it-plus (or hexo-renderer-markdown-it with markdown-it-katex plugin)
  # 需要全面的 Katex 支持。
  katex:
    # 默认使用 0.7.1，jsdeliver CDN，在任何地方都可以使用，包括天朝。
    cdn: //cdn.jsdelivr.net/npm/katex@0.7.1/dist/katex.min.css
    # cloudflare 提供的 CDNJS 可能是最好的 CDN，但在天朝不可用。
    #cdn: //cdnjs.cloudflare.com/ajax/libs/KaTeX/0.7.1/katex.min.css
    # Bootcss CDN 在中国挺好用，但在其他地区不太行。
    #cdn: //cdn.bootcss.com/KaTeX/0.7.1/katex.min.css

# Han 支持
# 依赖服务： https://github.com/theme-next/theme-next-han
han: false

# Pangu 支持
# 依赖服务： https://github.com/theme-next/theme-next-pangu
# 更多信息：https://github.com/vinta/pangu.js
pangu: false

# Swiftype 搜索 API Key
#swiftype_key:

# 百度分析服务 ID
#baidu_analytics:

# Disqus
disqus:
  enable: false
  shortname:
  count: true
  lazyload: false

# Hypercomments
#hypercomments_id:

# changyan
changyan:
  enable: false
  appid:
  appkey:


# Valine.
# 你可以在 https://leancloud.cn 获取你的 appid 和 appkey
# 更多信息，查看 https://valine.js.org
valine:
  enable: false
  appid:  # your leancloud application appid
  appkey:  # your leancloud application appkey
  notify: false # mail notifier , https://github.com/xCss/Valine/wiki
  verify: false # Verification code
  placeholder: Just go go # comment box placeholder
  avatar: mm # gravatar style
  guest_info: nick,mail,link # custom comment header
  pageSize: 10 # pagination size


# youyan 评论系统支持。
# 你可以在 http://www.uyan.cc 获取你的 uid
#youyan_uid: your uid

# LiveRe 评论系统支持。
# 你可以在 https://livere.com/insight/myCode 获取你的 uid (常用网站)
#livere_uid: your uid

# Gitment
# 介绍： https://imsun.net/posts/gitment-introduction/
gitment:
  enable: false
  mint: true # 推荐，Gitment的一个非常有用的功能，用以支持 计数，语言和代理
  count: true # 在文章元信息区域显示评论数量
  lazy: false # 通过一个按钮实现评论懒加载
  cleanly: false # 隐藏底部的 'Powered by ...' 和其他信息
  language: # 强制使用语言，或者通过主题自动转换
  github_user: # 必须， 你的 Github 用户名
  github_repo: # 必须，用来存储Gitment 评论信息的仓库
  client_id: # 必须，Gitment登陆 Github 的客户端 id
  client_secret: # 这个和 proxy_gateway 代理设置任选一个，Gitment 登陆 Github 的隐私 token
  proxy_gateway: # api 代理地址，查看： https://github.com/aimingoo/intersect
  redirect_protocol: # redirect_uri 的 force_redirect_protocol 协议，当 mint 设为 true 时


# 百度分享
# 可选值：
#    button | slide
# 注意：百度分享不支持 https。
#baidushare:
##  type: button

# 分享
# 这个插件在中国很有用，但你得知道如何使用它。
# 你可以在官网 http://www.jiathis.com/ 找到用户手册。
# 注意：JiaThis 分享不支持 https。

#jiathis:
  ##uid: 从 http://www.jiathis.com/ 获取 uid

#add_this_id:

# NeedMoreShare2
# 依赖服务： https://github.com/theme-next/theme-next-needmoreshare2
# 查看： https://github.com/revir/need-more-share2
# 也可以查看： https://github.com/DzmVasileusky/needShareButton
# iconStyle: default | box
# boxForm: horizontal | vertical
# position: top / middle / bottom + Left / Center / Right
# networks: Weibo,Wechat,Douban,QQZone,Twitter,Linkedin,Mailto,Reddit,
#           Delicious,StumbleUpon,Pinterest,Facebook,GooglePlus,Slashdot,
#           Technorati,Posterous,Tumblr,GoogleBookmarks,Newsvine,
#           Evernote,Friendfeed,Vkontakte,Odnoklassniki,Mailru
needmoreshare2:
  enable: false
  postbottom:
    enable: false
    options:
      iconStyle: box
      boxForm: horizontal
      position: bottomCenter
      networks: Weibo,Wechat,Douban,QQZone,Twitter,Facebook
  float:
    enable: false
    options:
      iconStyle: box
      boxForm: horizontal
      position: middleRight
      networks: Weibo,Wechat,Douban,QQZone,Twitter,Facebook

# Google Webmaster tools verification 设置
# See: https://www.google.com/webmasters/
#google_site_verification:

# Google Analytics
#google_analytics:

# Bing Webmaster tools verification 设置
# See: https://www.bing.com/webmaster/
#bing_site_verification:

# Yandex Webmaster tools verification 设置
# See: https://webmaster.yandex.ru/
#yandex_site_verification:

# CNZZ计数
#cnzz_siteid:

# Application Insights
# See https://azure.microsoft.com/en-us/services/application-insights/
# application_insights:

# 文章窗口 & FB/VK 评论设置。
# ---------------------------------------------------------------
# Facebook SDK Support.
# https://github.com/iissnan/hexo-theme-next/pull/410
facebook_sdk:
  enable:       false
  app_id:       #<app_id>
  fb_admin:     #<user_id>
  like_button:  #true
  webmaster:    #true

# Facebook 评论插件
# 这个插件需要 Facebook SDK.
# 如果 facebook_sdk.enable 设置为 false, Facebook 评论插件将不可用。
facebook_comments_plugin:
  enable:       false
  num_of_posts: 10    # 最小发布词数是 1
  width:        100%  # 默认宽度 550px
  scheme:       light # 默认主题是 light (light or dark)

# VKontakte API 支持。
# 从 https://vk.com/editapp?act=create 获取你的 AppID
vkontakte_api:
  enable:       false
  app_id:       #<app_id>
  like:         true
  comments:     true
  num_of_posts: 10

# 文章平分服务。
# 从 https://widgetpack.com 获取你的 ID
rating:
  enable: false
  id:     #<app_id>
  color:  fc6423
# ---------------------------------------------------------------

# 显示每篇文章的浏览人数
# 你可以从 https://leancloud.cn 获取你的 AppID 和 AppKey。
leancloud_visitors:
  enable: false
  app_id: #<app_id>
  app_key: #<app_key>
  # LeanCloud Counter Security Plugin (beta, 目前仍在测试中)。
  # 依赖服务 https://github.com/theme-next/hexo-leancloud-counter-security
  # 如果你不关心 lc counter 的安全问题，直接使用它
  # （不用hexo-leancloud-counter-security 插件）把 `security` 设为 `false`。
  security: false
  betterPerformance: false

# 另一个显示文章浏览数量的工具。
# 通过 https://console.firebase.google.com/u/0/ 获取 apiKey 和 projectId
# 通过 https://firebase.google.com/docs/firestore/ 获取更多关于 firestore 信息。
firestore:
  enable: false
  collection: articles #必须，获取 firestore 数据库的 集合名称
  apiKey: #必须
  projectId: #必须
  bluebird: false # 如果你想使用 bluebird 3.5.1 （代码版本）Promise polyfill，设为 true。

# 通过 busuanzi 展示 网站/页面的查看/浏览人数。
# 在 http://ibruce.info/2015/04/04/busuanzi/ 获取更多信息
busuanzi_count:
  enable: false
  total_visitors: true
  total_visitors_icon: user
  total_views: true
  total_views_icon: eye
  post_views: true
  post_views_icon: eye


# Tencent analytics ID
# tencent_analytics:

# Tencent MTA ID
# tencent_mta:


# 开启百度推送，博客将会自动将链接推送到百度，这非常有利于 SEO。
baidu_push: false

# Google Calendar
# 通过日历页面分享你的近期日程安排
#
# API 文档：
# https://developers.google.com/google-apps/calendar/v3/reference/events/list
calendar:
  enable: false
  calendar_id: <required>
  api_key: <required>
  orderBy: startTime
  offsetMax: 24
  offsetMin: 4
  timeZone:
  showDeleted: false
  singleEvents: true
  maxResults: 250

# Algolia 搜索
# 查看： https://github.com/theme-next/hexo-theme-next/blob/master/docs/ALGOLIA-SEARCH.md
# Dependencies: https://github.com/theme-next/theme-next-algolia-instant-search
algolia_search:
  enable: false
  hits:
    per_page: 10
  labels:
    input_placeholder: Search for Posts
    hits_empty: "We didn't find any results for the search: ${query}"
    hits_stats: "${hits} results found in ${time} ms"

# 本地搜索
# 依赖服务： https://github.com/theme-next/hexo-generator-searchdb
local_search:
  enable: false
  # 如果设为 auto，将会在输入时触发搜索
  # 如果设为 manual，将会在按下 enter 键和搜索按钮时触发搜索
  trigger: auto
  # 显示最符合的文章的数量，设置为 -1 显示所有结果
  top_n_per_article: 1
  # 保留 html 字符串为易读的方式
  unescape: false

# 书签服务
# 依赖服务： https://github.com/theme-next/theme-next-bookmark
bookmark:
  enable: false
  # 如果设置为 auto
  #   - save the reading position when closing the page
  #   - 当页面关闭时保存阅读位置
  #   - 或者在点击书签按钮时
  # 如果设置为 manual, 只有当点击书签按钮时保存
  save: auto

```

### 10. 标签设置
```
# 外部链接使用 BASE64 加密 & 解密
# 用法：{% exturl text url "title" %}
# 或者： {% extlink text url "title" %}
exturl: false

# Note 标签 (bs-callout)。
note:
  # Note 标签的样式值：
  #  - simple    bs-callout old alert style. Default.
  #  - modern    bs-callout new (v2-v3) alert style.
  #  - flat      flat callout style with background, like on Mozilla or StackOverflow.
  #  - disabled  disable all CSS styles import of note tag.
  style: simple
  icons: false
  border_radius: 3
  # 背景轮廓的偏移百分比，使用 modern 或者 flat 样式(modern: -12 | 12; flat: -18 | 6)。
  # 偏移也可运用在 label 标签上。这个选项在禁用 note 标签时也可用。
  light_bg_offset: 0

# Label tag.
label: true

# Tabs tag.
tabs:
  enable: true
  transition:
    tabs: false
    labels: true
  border_radius: 0

# 渲染进度条
# 依赖服务： https://github.com/theme-next/theme-next-reading-progress
reading_progress:
  enable: false
  color: "#37c6c0"
  height: 2px

```

###
```
```
