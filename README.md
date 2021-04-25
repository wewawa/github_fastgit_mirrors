- install
```bash
cd ./github_fastgit_mirrors
chmod +x github_fastgit_wget
chmod +x github_fastgit_curl
echo "PATH=\$PATH:\"${PWD}\"" >> /etc/bashrc
```

- use
```bash
# start
source ./github_mirrors_start
# stop
source ./github_mirrors_stop
```

