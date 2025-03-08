要将GitHub开源项目保存到自己的Git仓库，同时保持与原始项目的同步更新，你可以使用以下方法：

方法一：使用Fork + 上游仓库
Fork原始仓库：
在GitHub上访问OpenManus项目页面
点击右上角的"Fork"按钮，将项目复制到你的GitHub账户
克隆你的Fork到本地：
```bash
git clone https://github.com/你的用户名/OpenManus.git
```
添加上游仓库：
```bash
cd OpenManus
git remote add upstream https://github.com/原始作者/OpenManus.git
```

## 完整Git工作流

### 1. 同步上游仓库的更新
```bash
# 获取上游仓库的最新内容
git fetch upstream
# 切换到你的主分支
git checkout main  # 或master，取决于主分支名称
# 合并上游仓库的更改
git merge upstream/main
# 推送更新到你的远程仓库
git push origin main
```

### 2. 创建功能分支进行开发
```bash
# 确保主分支是最新的
git checkout main
git pull origin main

# 创建并切换到新的功能分支
git checkout -b feature/new-feature

# 在此分支上进行开发工作
# ...编写代码...

# 提交你的更改
git add .
git commit -m "添加新功能：功能描述"

# 推送分支到你的远程仓库
git push origin feature/new-feature
```

### 3. 创建Pull Request
- 在GitHub上导航到你的fork仓库
- 点击"Compare & pull request"按钮
- 填写PR描述并创建Pull Request到原始仓库

### 4. 处理冲突
如果你的PR与上游仓库有冲突：
```bash
# 更新上游仓库
git fetch upstream

# 切换到你的功能分支
git checkout feature/new-feature

# 将上游主分支合并到你的功能分支
git merge upstream/main

# 解决冲突
# 编辑有冲突的文件，解决冲突

# 标记冲突已解决并提交
git add .
git commit -m "解决与上游主分支的冲突"

# 更新你的远程分支
git push origin feature/new-feature
```

### 5. 保持fork仓库与上游同步
定期执行同步操作，确保你的fork仓库不会过时：
```bash
git fetch upstream
git checkout main
git merge upstream/main
git push origin main
```
```