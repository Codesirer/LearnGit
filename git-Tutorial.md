# Git -- Version Control


git init #使当前目录变成可以管理的版本仓库（git repository)
git add filename #将文件添加到版本仓库
git commit -m "description" #把文件提交到仓库
git status #查看repository的状态
git diff #查看修改了哪些内容
git log #查看提交日志
git log --pretty=oneline #简洁地显示提交日志
git reset --hard HEAD~<3> #回退到某个版本，比如这里回退到第前3个版本
git reset --hard <commit ID> #回退到特定ID的版本
git reflog #记录了每个命令，可以用来查看每个操作的编号
