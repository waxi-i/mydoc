#!/bin/bash

set -ue

cd /apps/v2doc

gitbook build ./dev ./docs

find ./docs -type f -name "*.html" | xargs sed -i 's#https://www.gitbook.com##g'
find ./docs -type f -name "*.html" | xargs sed -i 's#本书使用 GitBook 发布#End#g'

# 插件 http://gitbook.zhangjikai.com/plugins.html
