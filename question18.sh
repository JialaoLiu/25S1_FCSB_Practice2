#!/bin/bash

# Step 1: 进入你的 `Week2Practice` 目录
cd ~/Desktop/StudyFile/Semester1/FCS\ B/Week2Practice

# Step 2: 克隆仓库
git clone https://github.com/ian-knight-uofa/git-practice-04.git
cd git-practice-04

# Step 3: 获取所有远程分支
git fetch --all

# Step 4: 列出所有 `ready*` 和 `update*` 分支
git branch -r | grep "ready" | sed 's/origin\///' > ready_branches.txt
git branch -r | grep "update" | sed 's/origin\///' > update_branches.txt

# Step 5: 合并所有 `ready*` 分支到 `main`
git checkout main
for branch in $(cat ready_branches.txt); do
    git merge $branch
done

git add .
git commit -m "Resolved merge conflicts in ready* branches"

# Step 7: 删除 `ready*` 分支
for branch in $(cat ready_branches.txt); do
    git branch -d $branch
    git push origin --delete $branch
done

# Step 8: 更新所有 `update*` 分支
for branch in $(cat update_branches.txt); do
    git checkout $branch
    git merge main
    git push origin $branch
done

git checkout main
