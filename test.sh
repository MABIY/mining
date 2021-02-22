user=$1
password=$2
echo "get user:$user password:$password"
sudo sh -c "cat >> /home/$user/.zshrc <<EOF
alias datef=\"date '+%Y%m%d'\"
alias gdate=\"date +'%Y%m%d' | clipcopy\"
alias gpu=\"grive -p /home/$user/grive/\"
alias pu=\"git add -A && git commit -m  \"..\" && git push\"
alias rb=\"echo $password | sudo sync;sudo sync;sudo sync;sudo -S reboot\"
alias sd=\"gpu && sudo sync&&sudo sync&& sudo sync&&sudo -S shutdown -h 0\"
alias leanjava=\"idea ~/project/learn_java\"
alias killmw=\"killall -9 mysql-workbench-bin\"
alias noproxy=\"unset http_proxy && unset https_proxy\"
alias killwx=\"killall -9 electronic-wechat\"
export http_proxy='http://0.0.0.0:12333'
#export https_proxy='socks5://127.0.0.1:1080'
export https_proxy='http://0.0.0.0:12333'
EOF"
