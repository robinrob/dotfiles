# Un-Aliases
###############################################################################
unalias todo

unalias gr

unalias cdb

# unalias gcl

unalias c

unalias gb

unalias gi

# unalias e

unalias gra

unalias gbd

unalias sd

# unalias gg

unalias ga

unalias d

unalias s

unalias gst

# unalias lc

unalias sf

# unalias cd > /dev/null 2> /dev/null

unalias lsg

unalias ls

unalias rm


# Web Shortcuts/Bookmarks
alias q="question"

source $DOTFILES_HOME/bookmarks.zsh

alias rd="rubydoc"

alias wk="wiki"

alias gg="google"


# Hashes
###############################################################################

hash -d robin="$PROG_HOME"

hash -d rby="$RUBY_HOME"

hash -d dotfiles="$DOTFILES_HOME"

hash -d javascript="$JS_HOME"

hash -d html-css="$HTMLCSS_HOME"


# Aliases
###############################################################################

# Global aliases
# alias -g p="prog"
#
# alias -g r="rby"
#
# alias -g d="dotfiles"
#
# alias -g css="html-css"
#
# alias -g L='| less'
#
# alias -g NUL="> /dev/null 2>&1"
#
# alias -g pr="practice"
#
# alias -g pro="projects"

# Hash aliases
alias js="javascript"


# GNU aliases
alias mv="gmv"

alias gecho="echo"

alias gegrep="gegrep"

alias grep="ggrep"

alias find="gfind"

alias sed="gsed"

alias ls="/usr/local/bin/gls --color"

alias cat="gcat"

alias awk="gawk"

alias "echo"="gecho"

# Shell Aliases
alias lsltr="ls -ltr | awk '{print \$9}' | tail +2"

alias dt="date"

alias crl="crontab -l"

alias cre="crontab -e"

alias less='less -m -N -g -i -J --underline-special --SILENT'

alias more='less'

alias mkdir='mkdir -pv'

alias wh="which"

alias w="which"

alias chr="chrome"

alias lsl="ls -l"

alias isgit="show_git"

alias isg="isgit"

alias igi="isgit"

alias shell="echo $SHELL"

alias dir="dirname"

alias cdcocos="cd $COCOS_HOME"

# Shell shortcuts
alias mcol="mate $DOTFILES_HOME/colors.zsh"

alias syslog="tail -f /var/log/system.log"

# Applications/Tools
alias sc="scala"

alias scc="scalac"

alias tran="trans :tl"

alias lessc="$LESSC_PATH"

alias lc="lessc"

alias book="safari"

alias firefoxp="/Applications/Firefox.app/Contents/MacOS/firefox-bin -p"

alias ffp="firefoxp"

alias firefoxr="/Applications/Firefox.app/Contents/MacOS/firefox-bin -p Robin &"

alias ffr="firefoxr"

alias firefoxc="/Applications/Firefox.app/Contents/MacOS/firefox-bin -p Cloudreach &"

alias ffc="firefoxc"

alias adobe="$ADOBE_PATH"

alias m="mate"

alias gimp="/Applications/GIMP.app/Contents/MacOS/GIMP-bin"

alias sublime="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"

# Navigation

alias cdi="cd_dir"

alias cdpr="cd_dir $PROG_HOME"

alias cdd="cd_dir $DOTFILES_HOME"

alias cdb="cd_dir $HTMLCSS_HOME/practice/bootstrap"

alias cdsc="cd_dir $SCALA_HOME"

alias cdr="cd_dir $RUBY_HOME"

alias cdc="cd_dir $COFFEE_HOME"

alias cdo="cd_dir $OCAML_HOME"

alias cdpl="cd_dir $PERL_HOME"

alias cdmr="cd_dir $RUBY_HOME/projects/mrrobinsmith.com"

alias cdq="cd_dir $RUBY_HOME/projects/quiz"

alias cdp="cd_dir $PY_HOME"

alias cdp2="cd_dir $PY_HOME/python2"

alias cdp3="cd_dir $PY_HOME/python3"

alias cdrk="cd_dir $RAKEFILE_HOME"

alias cdz="cd_dir $ZSH_HOME"

alias cdl="cd_dir $LOCAL_HOME"

alias cda="cd_dir $AWK_HOME"

alias cdw="cd_dir $WORK_HOME"

alias cdwr="cd_dir $WORK_RUBY_HOME"

alias cdwp="cd_dir $WORK_PYTHON_HOME"

alias cds="cd_dir $SH_HOME"

alias cdj="cd_dir $JS_HOME"

alias cdjv="cd_dir $JV_HOME"

alias cdjpr="cd_dir $JS_HOME practice"

alias cdjs="cdj"

alias cdh="cd_dir $HTMLCSS_HOME"

alias cdls="cd_dir $HTMLLESS_HOME"

alias cdrecipe="cd_dir $HTMLCSS_HOME/projects/recipe-finder"

alias cdscr="cd_dir $SCREENSHOTS_HOME"

alias cdcam="cd_dir $CAMERA_HOME"

alias cdk="cd_dir $KITCHENPLAN_HOME"

alias cddl="cd_dir ~/Downloads"

alias cdmv="cd_dir ~/Movies"

alias cdaws="cd_dir `dirname $AWS_CONFIG`"

alias cdm="cd_dir $JS_HOME/projects"

alias cdmb="cd_dir $JS_HOME/projects/mobile-app-cordova"

alias cdg="cd_dir $JS_HOME/projects/mobile-game-cocos"

# Development operations
alias mrdb="psql -U msl -d mrrobinsmith_development"

alias rsc="rails console"

alias rksv="rake_do server"

alias rls="rails server"

alias rkm="rake db:migrate"

alias rk="rake"

alias bi="bundle install"

alias bu="bundle update"

alias save="rake -f $GLOBAL_RAKEFILE_HOME/Rakefile save_code"

alias rksr="rake -f $RAKEFILE_HOME/Rakefile save"

alias rkd="rake_do deploy"

alias rkp="rake_do pull"

alias rkup="rakeup"

alias rkdn="rakedown"

alias fbu="fabup"

alias fbd="fabdown"

alias anew="new_s awk awk"

alias pnew="new_s python py"

alias bnew="new_s bash sh"

alias snew="new_s sh sh"

alias onew="new_s ocaml ml"

alias znew="new_s zsh zsh"

# alias rnew="new -i ruby -e rb -o noopen -f"

alias jnew="jsnew"

alias cssnew="new -i '' -e css -f"

alias tnew="new -i '' -e txt -f"

alias demo="open $MOBILEAPP_HOME/www/index.html"

alias up2="pythonbrew use 2.7"

alias up3="pythonbrew use 3.2"

alias p2="~/.pythonbrew/pythons/Python-2.7/bin/python"

alias p3="~/.pythonbrew/pythons/Python-3.2/bin/python3"

alias pbrew="pythonbrew"

alias cen="count_non_empty $DOTFILES_HOME/env_variables.zsh"

alias cal="count_non_empty $DOTFILES_HOME/aliases.zsh"

alias cfn="grep function $DOTFILES_HOME/functions.zsh | wc -l"

# alias lfn='grep -o "function [a-zA-Z0-9_]* "'$DOTFILES_HOME/functions.zsh'| awk ''{print $2}'' | grep ''.*'''

# Git aliases
alias gst="git status"

alias gSt="git stash"

alias grrm="git remote rm"

alias gi="git init"

alias grm="git rm -r --cached"

alias gbd="git branch develop && git checkout develop"

alias gbx="git branch -d"

alias gbm="git branch master && git checkout master	"

alias gch="git checkout"

alias gb="git branch"

alias gcmr="git submodule foreach 'git checkout master'"

alias gsf="git submodule foreach"

alias gpd="git push origin develop"

alias gpm="git push origin master"

alias gpld="git push origin develop"

alias gplm="git push origin master"

alias gcm="git checkout master"

alias gcmm="git commit -m"

alias gcd="git checkout develop"

alias ga="git add"

alias gsi="git submodule init"

alias gsu="git submodule update"

alias gsa="git submodule add"

alias cgm="cat .gitmodules"

alias grh="git reset HEAD"

alias gra="git remote add"

alias grao="git remote add origin"

alias gpom="git push origin master"

alias gplom="git pull origin master"

alias gsr="git submodule add git@bitbucket.org:robinrob/rakefile.git rake && ln -s rake/Rakefile Rakefile"

# Git repo operations
alias pl="cd_pull"

alias st="cd_status"

alias sv="cd_save"

alias dpl="cd_pull $DOTFILES_HOME"

alias dsv="save_crontab; save_jetbrains; cd_save $DOTFILES_HOME"

alias dcm="cd_commit $DOTFILES_HOME"

alias ddi="cd_diff $DOTFILES_HOME"

alias dst="cd_status $DOTFILES_HOME"

languages

alias DSV="dsv"

alias fpl="fab pull"

alias bsv="cd_save $BACKUPS_HOME"

alias bpl="cd_pull $BACKUPS_HOME"

alias lpl="cd_pull $LOCAL_HOME"

alias lsv="cd_save $LOCAL_HOME"

alias lst="cd_status $LOCAL_HOME"

alias qpl="cd_pull $QUIZ_HOME"

alias qsv="cd_save $QUIZ_HOME"

# Chef
alias kel="knife environment list"

alias knl="knife node list"

# Viewing and editing files

alias mprompt="mate ~/.zsh.prompts/prompt_robin_setup"

alias rs="source ~/.zshrc"

alias RS="source ~/.zshrc"

alias save="rake -f $GLOBAL_RAKEFILE_HOME/Rakefile save_code"

alias vconf="vim ~/.ssh/config"

alias mssh="mate ~/.ssh/config"

alias mconf="mssh"

alias essh="edit ~/.ssh/config"

alias ess="edit ~/.ssh/config"

alias econf="edit ~/.ssh/config"

alias vzsh="vim ~/.zshrc"

alias mzsh="mate ~/.zshrc"

alias ezsh="edit ~/.zshrc"

alias ezs="ezsh"

alias czsh="cat ~/.zshrc"

alias mbk="m $DOTFILES_HOME/bookmarks.zsh"

alias edit=$EDITOR

alias conf="$EDITOR ~/.ssh/config"

alias maws="mate $AWS_CONFIG"

alias caws="cat $AWS_CONFIG"

alias eaws="$EDITOR $AWS_CONFIG"

alias reminderrobin="reminder robin@mrrobinsmith.com"

alias reminderwork="reminder robin.smith@cloudreach.co.uk"

alias tagalog="cd_dir $QUIZ_HOME && ./quiz.rb -f $QUIZ_HOME/tagalog.csv -t 10 -g 3"

alias capitals="cd $QUIZ_HOME && ./quiz.rb -f $QUIZ_HOME/capitals.csv -t 10 -g 3"

alias erec="$EDITOR $RECORDS_PATH"

alias cms="edit $DOCS_HOME/commands.txt"

alias password="ruby $RUBY_HOME/projects/rbpassword/rbpassword.rb"

alias rnsall="cd $SCREENSHOTS_HOME && despace"

alias mal="mate $DOTFILES_HOME/aliases.zsh"

alias men="mate $DOTFILES_HOME/env_variables.zsh"

alias mfn="mate $DOTFILES_HOME/functions.zsh"

alias t="touch"

alias mmutt="mate ~/.mutt/muttrc"

alias gl="git log"

alias t2="t22"

alias t3="t3389"

alias jl="jsonlint"

alias bcodes="cat $IMPORTANT_HOME/passwords/Backup-codes-robin.smith.txt"

alias gcl="git clone"

alias cmd="mate $TEMP_HOME/commands.txt"

alias window="open /Users/robinsmith/Dropbox/Camera\ Uploads/gif/window.gif"

alias emptytrash="sudo rm -rf ~/.Trash/*"

alias cgi="cat .gitignore"

alias x="chmod +x"

alias mx="chmod -x"

alias kne="knife node edit --editor vim"

alias kee="knife environment edit --editor vim"

alias rki="rake install"

alias fbs="fab save"

alias fcl="fab clean"

alias cgc="cat ~/.gitconfig"

alias crk="cat Rakefile"

alias mrk="mate Rakefile"

alias mgf="mate Gemfile"

alias cgf="cat Gemfile"

alias mgi="mate .gitignore"

alias mgm="mate .gitmodules"

alias egi="$EDITOR .gitignore"

alias ecmd="$EDITOR $DOCS_HOME/commands.txt"

alias cmd="mate $DOCS_HOME/commands.txt"

alias e=$EDITOR

alias v=$VISUAL

alias editor="echo $EDITOR"

alias sprog="du -dh $PROG_HOME"

alias spr="sprog"

alias sd="du -dh"

alias erk="edit rakefile"

alias prst="cd_status $PROG_HOME"

alias prsv="cd_save $PROG_HOME"

alias prc="cd_count_all $PROG_HOME"

alias pst="cd_status $PY_HOME"

alias psv="cd_save $PY_HOME"

alias rkct="rake count_all"

alias mkd="mkdir"

alias cdt="cd $TRASH_HOME"

alias plane="copy_print NQFLIZ"

alias gclm="git clone -b master"

alias gclb="git clone -b "

alias cdrc="cd $RECEIPTS_HOME"

alias cdrp="cdrc"

alias c="cat"

alias pb="pbcopy"

alias splq="mate $TEMP_HOME/splunk_searches.txt"

# Shell functions/function aliases
alias nbrew="newbrew"

alias rbdoc="rubydoc"

alias svc="save_code"

alias kp="killp"

alias killpf="killp firefox"

alias kpf="killpf"

alias lf="libfind_s"

alias rfind="libfind_s $RUBY_HOME/practice"

alias ofind="libfind_s $OCAML_HOME"

alias pfind="libfind_s $PYTHON_HOME"

alias lfind="libfind_s $LOCAL_HOME"

alias dfind="libfind_s $DOTFILES_HOME"

alias hfind="libfind_s $HTMLCSS_HOME/practice"

alias jfind="libfind_s $JS_HOME/practice"

alias npmfind="libfind_s $NPMLIB_HOME"

alias jvfind="libfind_s $JV_HOME"

alias cfind="libfind_s $C_HOME"

alias sfind="libfind_s $SH_HOME"

alias zfind="libfind_s $ZSH_HOME/practice"

alias prfind="libfind_s $PROG_HOME"

alias afind="libfind_s $AWK_HOME"

alias zshfind="file_grep ~/.zshrc"

alias sshfind="file_grep ~/.ssh/config"

# Records & docs
alias erec="$EDITOR $IMPORTANT_HOME/records/record.txt"

alias mrec="mate $RECORDS_PATH"

alias cardcredit="get_record rbc-credit"

alias cardhsbc="get_record hsbc-debit"

alias cardrbc="get_record rbc-debit"

alias doc="cat $IMPORTANT_HOME/records/doc.txt"

alias mspnum="get_record msp_num"

alias mspaccount="get_record msp_account"

alias docsec1="get_record doctors_secretary1"

alias docsec2="get_record doctors_secretary2"

alias rssaws="get_record rss-aws"

alias ad="address"

alias phonelong="get_record phone_long"

alias phone="get_record phone_short"

alias ph="phone"

alias library="get_record $IMPORTANT_HOME/records/records.txt library"

alias lib="library"

alias postcode="get_record home_postcode"

alias pc="postcode"

alias address="get_record home_address"

alias workaddress="get_record work_address"

alias workpostcode="get_record work_postcode"

alias residency="$ADOBE_PATH $CANADA_HOME/residency_form.pdf"

alias songs="cd $SONGS_HOME"

alias sabihin="song sabihin_mo_na"

alias sb="sabihin"

alias skytrain="open $COMMON_DOCS_HOME/useful/vancouver_skytrain_map.pdf"

alias sky="skytrain"

alias tube="open $COMMON_DOCS_HOME/useful/tube_map.pdf"

alias pc="postcode"

alias ad="address"

alias ph="phone"

alias mobileideas="$EDITOR $MERCURY_HOME/creative/mobile/ideas.txt"

alias mi="mobileideas"

# Screenshots

alias screenshots="cd $SCREENSHOTS_HOME"

alias lasts="cd $SCREENSHOTS_HOME && lastf -s $SCREENSHOT_NAME"

alias dels="cd $SCREENSHOTS_HOME && rm Screen*"