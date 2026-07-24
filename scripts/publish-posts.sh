#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd -- "${script_dir}/.." && pwd)"

cd "${repo_dir}"

git add -- _posts images/posts

if git diff --cached --quiet; then
  echo "没有需要发布的日志或图片。"
  exit 0
fi

git commit -m "Publish posts $(date +%F)"
git push origin "$(git branch --show-current)"

echo "发布完成，GitHub Pages 正在更新。"
