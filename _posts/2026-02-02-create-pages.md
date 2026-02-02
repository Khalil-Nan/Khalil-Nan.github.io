```yaml
title: '个人网站的建立'
date: 2026-02-02
permalink: /posts/2026/02/个人网站的建立/
tags:
    - Glossary
```

# 个人网站的建立

https://docs.github.com/en/pages/quickstart

参考网站

已经过时了

1. 新建仓库，命名

2. setting 中pages选项

3. 新建了一个_config.yml文件，然后把主题仓库的Usage里面的用法复制粘贴进去，过一会刷新你的网站就完成了主题的设置，下面就是添加内容了我用的主题是hacker主题 https://github.com/pages-themes/hacker?tab=readme-ov-file#usage

4. post的命名格式YYYY-MM-DD-NAME-OF-POST.md

5. 对文件内部文件头的要求

6. Add the following YAML frontmatter to the top of the file, including the post's title enclosed in quotation marks, the date and time for the post in YYYY-MM-DD hh:mm:ss -0000 format, and as many categories as you want for your post.
   
   ```shell
   layout: post
   title: "POST-TITLE"
   date: YYYY-MM-DD hh:mm:ss -0000
   categories: CATEGORY-1 CATEGORY-2
   ```

我发现hacker主题没有post的页面，上传了之后不起作用，于是在GitHub上找了一个**[academicpages.github.io](https://github.com/academicpages/academicpages.github.io)** 这个主题，直接右上角应用即可，很方便简单。

然后发现上传了post之后，我的主页的post还是只想原作者的post，于是修改_config.yml配置文件里面的url.

发现链接虽然改了，但是还是看不到我上传的post，于是我把它自身的post复制了一份，确定下是不是文件头的问题，前一次建自己的网站的时候就卡在莫名其妙的空格上了，似乎，经验没有传承下来，失败

我还是觉得post的链接要改不应该是[Blog posts - Your Name / Site Title](https://khalil-nan.github.io/year-archive/)发现直接在地址栏换成/posts,没用，说明不是这个的问题

我接着在它自带的文章里加入了测试测试，看看网页有没有变化。文章有变化，现在我看看之前复制的自带文章改下日期，看是不是日期的问题或者中文的问题，发现不是中文的问题。

我现在把时间改为一致看是不是时间的问题，我的亲娘发现确实是时间的问题，真的很难顶，不过这个文件应该不是日期不一致的问题。

把自带的文件的表头复制过来发现自带一个yaml，估计这就是原因，应该总算大功告成了！！

- 用ctrl shift ＋k 插入yaml代码块！！！
