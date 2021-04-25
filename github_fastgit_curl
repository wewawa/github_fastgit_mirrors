function replace_url()
{
    local prefix="${1%%.com*}";
    local others="${1#*.com}";

    case "$prefix" in
        "https://github")
            echo "https://hub.fastgit.org${others}";
            ;;
        "https://raw.githubusercontent")
            echo "https://raw.fastgit.org${others}";
            ;;
        *)
            echo $1;
            ;;
    esac
}

pArr=();
pIndex=0;

for param in $*
do
    if [[ pIndex -ne -1 ]]; then
        dst=`replace_url "$param"`;
        pArr[pIndex]="$dst";
    fi
    let pIndex++;
done

curl ${pArr[*]};
