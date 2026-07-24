# 使用 Obsidian 发布日志

## 第一次设置

在 Linux 版 Obsidian 中选择 **Open folder as vault**，打开本仓库：

```text
/home/nx/my_projects/Khalil-Nan.github.io
```

然后在 **Settings → Core plugins** 中启用 **Templates**。模板目录已经配置为
`_templates`，新建文章时选择 `_templates/日志.md`。

在 **Settings → Files and links** 中确认：

- Default location for new attachments：`In the folder specified below`
- Attachment folder path：`images/posts`
- Use `[[Wikilinks]]`：关闭

这样生成的是 Jekyll 能直接识别的标准 Markdown 图片链接。

## 写一篇日志

Jekyll 要求公开日志位于 `_posts`，文件名格式为：

```text
YYYY-MM-DD-文章标题.md
```

可以在 Obsidian 中创建并套用模板，也可以在仓库终端运行：

```bash
./scripts/new-post.sh "今天的日志"
./scripts/new-post.sh "信号与系统学习笔记" "学习"
```

写作过程中插入的图片会保存到 `images/posts`。

## 发布

### 方式一：Obsidian Git 自动发布

安装社区插件 **Obsidian Git**，建议设置：

- Auto commit-and-sync interval：`10`
- Auto pull interval：`10`
- Commit message：`vault backup: {{date}}`
- Pull updates on startup：开启

插件会提交整个公开仓库。不要在这个 Vault 中保存私人笔记、账号或密钥。

### 方式二：终端发布

```bash
./scripts/publish-posts.sh
```

这个脚本只会暂存 `_posts` 和 `images/posts`，然后提交并推送到当前分支。
执行后 GitHub Pages 通常会在几分钟内更新。

## 注意事项

- 公开文章不要使用 `![[图片.png]]`，应使用 `![说明](相对路径)`。
- `_drafts` 可以保存草稿，但仓库本身是公开的，所以它并不适合私人内容。
- 推送前可以运行 `git status`，确认没有意外文件。
