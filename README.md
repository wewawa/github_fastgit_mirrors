# 利用[fastgit](https://fastgit.org/)加速[github](https://github.com/)资源的访问。

## 感谢[fastgit](https://fastgit.org/)

## 安装与使用

- 安装
```bash
cd ./github_fastgit_mirrors
chmod +x github_fastgit_git
chmod +x github_fastgit_wget
chmod +x github_fastgit_curl
```

- 单独使用（可避免全局污染）
```bash
# git **
./github_fastgit_git **
# wget **
./github_fastgit_wget **
# curl **
./github_fastgit_curl **
```

- 全局使用（==会 alias 系统的 `git, wget, curl`, 用完记得关掉==）

```
使用场景：
ios 开发中在 pod install 可能拉半天都拉不下来；
一些应用按装软件时会去拉 github 里的库：如 vim 安装插件...

这时可用全局开启的方式。
开启后，再做各种如 pod install, npm install, 等操作。
用完后记得关闭即可。
```

```bash
# 单次会话中开启
source ./github_mirrors_start
# 或直接全局开启
在 /etc/bashrc 中添加 source {本软件路径}/github_mirrors_start

# 接下来直接使用即可
git **
wget **
curl **
# pod install, npm install, :PluginInstall

# 关闭
# 单次会话中关系
source ./github_mirrors_stop
# 全局关闭
# 在 /etc/bashrc 中删除 source {本软件路径}/github_mirrors_start

```

