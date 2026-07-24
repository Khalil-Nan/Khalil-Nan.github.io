#!/usr/bin/env bash

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "用法: $0 \"文章标题\" [标签]"
  exit 1
fi

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd -- "${script_dir}/.." && pwd)"
post_date="$(date +%F)"
post_month="$(date +%Y/%m)"
post_title="$1"
post_tag="${2:-日志}"
post_file="${repo_dir}/_posts/${post_date}-${post_title}.md"

if [[ -e "${post_file}" ]]; then
  echo "文件已存在: ${post_file}"
  exit 1
fi

apply_template() {
  sed \
    -e "s|{{title}}|${post_title//&/\\&}|g" \
    -e "s|{{date:YYYY/MM}}|${post_month}|g" \
    -e "s|{{date}}|${post_date}|g" \
    -e "s|  - 日志|  - ${post_tag//&/\\&}|g" \
    "${repo_dir}/_templates/日志.md"
}

apply_template > "${post_file}"
echo "已创建: ${post_file}"
