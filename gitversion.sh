#!/bin/bash

latest_commit=$(git rev-parse HEAD)


# 获取最新的Git提交消息
latest_commit_message=$(git log -1 --pretty=%B)

# 检查提交消息中是否包含特定关键词并执行相应的操作
if [[ "$latest_commit_message" == *"trigger_build1"* ]]; then
    echo "Building from commit: $latest_commit_message"
    # 这里替换为触发构建1的实际命令
    # build_command1
elif [[ "$latest_commit_message" == *"trigger_build2"* ]]; then
    echo "Building from commit: $latest_commit_message"
    # 这里替换为触发构建2的实际命令
    # build_command2
else
    echo "No trigger keyword found in commit message: $latest_commit_message. Skipping build."
fi


echo "Building from commit: $latest_commit"

