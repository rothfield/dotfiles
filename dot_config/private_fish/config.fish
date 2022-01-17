alias lll 'ls -l'
set -g fish_greeting
alias cupsd "sudo cups"
alias arp "sudo arp"
alias pacman "sudo pacman"
alias vi "nvim"
alias nano "nvim"
alias cupsd "echo 'starting cups using sudo systemctl start cups'; sudo systemctl start cups"
alias rs "rails server -b 0.0.0.0"
alias mig "rails db:migrate"
alias drz "docker-compose run web zsh"
#alias rst 'rails server -p 3001'
alias rs "rm -f tmp/pids/server.pid & bin/rails s -p 3000 -b '0.0.0.0'"
#   alias rc 'bundle exec rails console'
#   alias sshx11 'ssh -XC'
alias mv 'mv -i'
alias rm 'rm -i'
alias gs 'git status'
alias gc 'git commit -m '
alias ga 'git add'
alias gl 'git log'
alias gp 'git push'
alias db 'docker build .'
alias dip 'docker image prune'
alias dipa 'docker image prune -a'
alias dc 'docker-compose'
alias dcd 'docker-compose down'
alias dcp 'docker container prune'
alias dcpf 'docker container prune -f'
alias dcu 'docker-compose up'
alias dcb 'docker-compose build'
alias dce 'docker-compose exec'
alias dil 'docker image ls'
alias dvl 'docker volume ls'
alias dcl 'docker container ls'
alias dcrw "echo 'running docker-compose run --rm web'; docker-compose run --rm web "	
alias dcrwf "echo 'running docker-compose run --rm web fish'; docker-compose run --rm web fish; hr"
alias dcf "echo 'running docker-compose -f ~/projects/rails7/docker-compose.yml run --rm web fish'; docker-compose -f ~/projects/rails7/docker-compose.yml run --rm web fish"
alias dcr 'docker-compose run'
alias dcef 'docker-compose exec web fish'
alias dcewf 'pushd /home/john/projects/rails7 ;docker-compose exec web fish; hr ; popd'
alias dk 'docker kill'
alias sf "source /home/john/.config/fish/config.fish > /dev/null"
alias ls 'ls --color'
alias lth 'ls -lth | head'
alias kill "sudo kill"
alias iwconfig "sudo iwconfig"
alias iwlist "sudo iwlist"
alias ping "sudo ping"
alias dhclient "sudo dhclient"
alias ntpdate "sudo ntpdate time.apple.com"
alias route "sudo route"
#alias cupsd "sudo /etc/init.d/cups "
alias apt-get "sudo apt-get"
alias aptitude "sudo aptitude"
alias reboot "sudo /sbin/reboot"
alias shutdown "sudo /sbin/shutdown"
alias mount "sudo /bin/mount"
alias umount "sudo /bin/umount"
alias mountpy "sudo /bin/mountpy"
alias synaptic 'sudo synaptic'
alias modprobe 'sudo modprobe'
alias dmesg 'sudo dmesg'
alias ll 'ls -l'
alias lf 'ls -F'
alias l 'ls -al'
alias lm "ls -al | more"
alias h history
alias hm "history | more"
alias gi "grep -i"
alias ff "find . -type f -name"
alias systemctl "sudo systemctl"
alias vi3 'vi ~/.config/i3/config'
alias vif 'vi ~/.config/fish/config.fish'
alias x 'startx'
alias r 'rails'
alias rc 'rails c'
alias evince 'atril'
alias alacritty "alacritty --working-directory $PWD"
alias rcu "echo 'rclone interactive sync up' && sleep 3 && rclone sync --interactive --exclude-from ~/bin/rclone_exclude-file.txt  $HOME/google-drive google-drive:"
alias rcd "echo 'from_phone: rclone interactive sync down' && sleep 3 && rclone sync --interactive google-drive:/from_phone $HOME/google-drive/from_phone"
eval (ssh-agent -c)
#echo "NOT adding id_rsa to keychain"
#eval /usr/bin/keychain --quiet /home/john/.ssh/id_rsa
# ssh-add
fish_vi_key_bindings
# history across fishes
function save_history --on-event fish_preexec
    history --save
end
alias hr 'history --merge'  # read and merge history from disk
set TZ America/Los_Angeles
fish_add_path --path ./bin
set PATH ~/bin ./bin $PATH
fish_add_path --path node_modules/.bin/
set -x PROJECT "/home/john/projects/blog_no_scaffold"
fish_add_path $PROJECT/bin
echo 
echo "Added $PROJECT to path. Path is $PATH"
#cd $PROJECT
