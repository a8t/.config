abbr ll 'ls -alF'
abbr la 'ls -A'
abbr l 'ls -aCF'
abbr projects 'c /Users/andytran/Documents/projects'
function c
    cd $argv; and echo "Now in:" (prompt_pwd); and ls
end

abbr .. 'c ../'
abbr ... 'c ../../'
abbr .... 'c ../../../'
abbr back 'c -'

function mcd
	mkdir -p $argv; and c $argv
end

abbr andc 'and c $_'

abbr nvim. 'nvim'
abbr vim 'nvim'
abbr vim. 'nvim'
abbr a. 'code'
abbr a 'code'

abbr fishrc 'code ~/.config/fish/config.fish'
abbr refish 'source ~/.config/fish/config.fish'

abbr vimrc 'touch ~/.config/nvim/init.vim; and nvim ~/.config/nvim/init.vim'
abbr revim 'nvim +PluginInstall'
abbr tmuxconf 'nvim ~/.tmuxconf'
abbr retmux 'tmux source ~/.tmuxconf'

abbr gi 'git init'
abbr ga 'git add ./'
abbr gc 'git commit'
abbr gp 'git push'
abbr gpl 'git pull'
abbr gs 'git status'
abbr gl 'git log'
abbr gch 'git checkout'
abbr gcb 'git checkout -b'
abbr gb 'git branch'
abbr gf 'git fetch -p'
abbr gcp 'git cherry-pick'
abbr gm 'git merge'
abbr gm 'git merge --no-ff'
abbr gcm 'git checkout master'
abbr grbo 'git rebase origin/master'
abbr gro 'git rebase origin/master'
abbr grom 'git rebase origin/master'
abbr gst 'git stash -k -u'
abbr gsta 'git stash apply'
abbr gstl 'git stash list'
abbr gstc 'git stash clear'


function gitignore
	touch .gitignore; and echo "node_modules/" >> .gitignore
end

# function nvm
#       bass source ~/.nvm/nvm.sh ';' nvm $argv
#   end
abbr finder 'open ./'

function getlocalip
  ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'
end

abbr sethost 'set -x HOST (eval getlocalip)'

set -gx PATH $HOME/.cargo/bin $PATH
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx PATH $PATH $ANDROID_HOME/emulator
set -gx PATH $PATH $ANDROID_HOME/emulator/emulator
set -gx PATH $PATH $ANDROID_HOME/tools
set -gx PATH $PATH $ANDROID_HOME/tools/bin
set -gx PATH $PATH $ANDROID_HOME/platform-tools
set -gx PATH $PATH $HOME/dev/ddcctl

bind \e\[1\;5C forward-word
bind \e\[1\;5D backward-word



source /usr/local/Cellar/asdf/0.8.0/asdf.fish
