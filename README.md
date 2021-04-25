# 利用[fastgit](https://fastgit.org/)加速[github](https://github.com/)资源的访问。

## 感谢[fastgit](https://fastgit.org/)

## 安装与使用

- 安装
```bash
cd ./github_fastgit_mirrors
chmod +x github_fastgit_git
chmod +x github_fastgit_wget
chmod +x github_fastgit_curl
echo "PATH=\$PATH:\"${PWD}\"" >> /etc/bashrc
# echo "PATH=\$PATH:\"${PWD}\"" >> ~/.bash_profile
source ~/etc/bashrc
# source ~/.bash_profile
```

- 单独使用（可避免全局污染）
```bash
# git **
github_fastgit_git **
# wget **
github_fastgit_wget **
# curl **
github_fastgit_curl **
```

- 全局使用（==会 alias 系统的 `git, wget, curl`, 用完记得关掉==）
```bash
# 全局开启
source ./github_mirrors_start

# 直接使用
git **
wget **
curl **

# 全局关闭
source ./github_mirrors_stop
```

