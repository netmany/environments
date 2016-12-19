source ~/.git-completion.bash
source ~/.mycmd
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
export TERM=xterm-256color
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}                    
export PS1="\n\w\n\[\e[32m\]\$(parse_git_branch)\[\e[36m\]\$\[\e[0m\] "
export LS_COLORS="no=00:fi=00:di=00;33:ln=00;36:pi=40;33:so=00;33:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;33:*.gif=00;33:*.bmp=00;33:*.xbm=00;33:*.xpm=00;33:*.png=00;33:*.tif=00;33:" 

SCHEME_PATH=~/apps/scheme
export PATH=$PATH:${SCHEME_PATH}/bin
export SCHEMEHEAPDIRS=${SCHEME_PATH}/lib:${SCHEMEHEAPDIRS}

export MyAppPath=~/code/practice/prj-net/out
export CHEZSCHEMELIBDIRS=${CHEZSCHEMELIBDIRS}:${MyAppPath}/lib

