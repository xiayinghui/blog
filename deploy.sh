#!/usr/bin/env sh
# 确保脚本抛出遇到的错误
set -e
npm run build # 生成静态文件
cd docs/.vuepress/dist # 进入生成的文件夹
# deploy to github
echo 'xiayinghui.github.io/blog' > CNAME
if [ -z "$GITHUB_TOKEN" ]; then
  msg='deploy'
  githubUrl=git@github.com:xiayinghui/blog.git
else
  msg='来自github action的自动部署'
  githubUrl=https://xiayinghui:${GITHUB_TOKEN}@github.com/xiayinghui/blog.git
  git config --global user.name "xiayinghui"
  git config --global user.email "xiayinghui@163.com"
fi
git init
git add -A
git commit -m "${msg}"
git push -f $githubUrl master:gh-pages # 推送到github gh-pages分支
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contac