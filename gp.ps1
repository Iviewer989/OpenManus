# 脚本存在问题, 需要修改
param([string]$msg = "update")
git add .
git commit -m $msg
git push
git log -1 --pretty=format:'%h - %s (%cr) <%an>'