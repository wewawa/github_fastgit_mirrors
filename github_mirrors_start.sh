git config --global url."https://hub.fastgit.org".insteadOf https://github.com
git config --global url."http://hub.fastgit.org".insteadOf http://github.com

alias wget=`github_fastgit_wget`
alias curl=`github_fastgit_curl`

echo "github.com replaced with hub.fastgit.org
