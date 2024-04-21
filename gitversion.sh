#!/bin/bash

# 获取最新commit message
latest_commit=$(git rev-parse HEAD)

# 获取最新的Git标签
latest_tag=$(git describe --tags --abbrev=0)

alltags=$(git tag)

echo $alltags

# 提取标签信息中的环境和构建号
environment=$(echo $latest_tag | cut -d '-' -f 1)
build_number=$(echo $latest_tag | cut -d '-' -f 2)

# 获取最新的Git提交消息
latest_commit_message=$(git log -1 --pretty=%B)

# 检查提交消息中是否包含特定关键词并执行相应的操作
if [[ "$latest_commit_message" == *"SIT"* ]]; then
    echo "Building from commit: $latest_commit_message"
    # 这里替换为触发构建1的实际命令
    # build_command1
elif [[ "$latest_commit_message" == *"UAT"* ]]; then
    echo "Building from commit: $latest_commit_message"
    # 这里替换为触发构建2的实际命令
    # build_command2
else
    echo "No trigger keyword found in commit message: $latest_commit_message. Skipping build."
fi

echo "Building from commit: $latest_commit"
echo "latest_commit : $latest_commit"
echo "latest_tag : $latest_tag"
echo "environment : $environment"
echo "build_number : $build_number"
