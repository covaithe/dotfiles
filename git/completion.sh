completion=/usr/local/share/zsh/site-functions/_git

if [[ -f $completion ]];
then
    export FPATH="$completion:$FPATH"
fi
