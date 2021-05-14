# 利用[fastgit](https://fastgit.org/)加速[github](https://github.com/)资源的访问。

## 感谢[fastgit](https://fastgit.org/)

## 安装

```bash

# 从 github 拉取代码
git clone https://github.com/wewawa/github_fastgit_mirrors.git
# 或从 gitee 拉取代码
git clone https://gitee.com/panchongwen/github_fastgit_mirrors.git

cd ./github_fastgit_mirrors

# 加入执行权限
chmod +x github_fastgit_git
chmod +x github_fastgit_wget
chmod +x github_fastgit_curl

# 加入环境变量
echo "" >> ~/.bashrc
echo "GITHUB_FASTGIT_HOME=$PWD" >> ~/.bashrc
echo 'export PATH=$PATH:$GITHUB_FASTGIT_HOME' >> ~/.bashrc
source ~/.bashrc
```

## 使用

### 单独使用（可避免全局污染）

```bash

# git ** 用以下代替
# github_fastgit_git **

# wget ** 用以下代替
# github_fastgit_wget **

# curl ** 用以下代替
# github_fastgit_curl **

```

### 单次会话使用（**会 alias 系统的 `git, wget, curl`, 用完记得关掉**）

```bash

# 开启
source ./github_mirrors_start

# 直接使用
# git **
# wget **
# curl **

# 关闭
source ./github_mirrors_stop

```


### 全局使用（**会 alias 系统的 `git, wget, curl`, 用完记得关掉**）

- 使用场景：
    - ios 开发中在 pod install 可能拉半天都拉不下来；
    - 一些应用按装软件时会去拉 github 里的库：如 vim 安装插件...
- 这时可用全局开启的方式。
    - 开启后，再做各种如 pod install, npm install, 等操作。
    - 用完后记得关闭。

```bash

# 开启
# 在 ~/.bashrc 中添加或打开注释 source {本软件路径}/github_mirrors_start
source ~/.bashrc

# 接下来直接使用即可
# git **
# wget **
# curl **
# pod install, npm install, :PluginInstall

# 关闭
# 在 ~/.bashrc 中注释掉或删除 source {本软件路径}/github_mirrors_start
source ~/.bashrc

```

