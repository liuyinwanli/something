# 只保留最新版本

```
git checkout --orphan latest 
# git switch --orphan latest
```
```
git add .
```
```
git commit -m "只保留最新版本"
```
```
git branch -D <main/master>
```
```
git branch -m <main/master>
```
```
git push origin <master/main> -f
```



# 初始化
## 创建readme
```
echo "# test" >> README.md
```
## 初始化,创建.git
```
git init
```
## 添加文件
```
git add .
```
## 提交

```
git commit -m "first commit"
```
## 切换主分支
```
git branch -M main
```
## 添加远程仓库
```
git remote add origin git@github.com:liuyinwanli/<test>.git
```
## 推送到远程仓库

```
git push -u origin main
```

# 配置ssh
```
Host github.com
	Hostname ssh.github.com
	Port 443
	User git

```
