- install
```bash
cd ./github_fastgit_mirrors
chmod +x github_fastgit_git
chmod +x github_fastgit_wget
chmod +x github_fastgit_curl
echo "PATH=\$PATH:\"${PWD}\"" >> /etc/bashrc
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
# start
source ./github_mirrors_start
# stop
source ./github_mirrors_stop
```

