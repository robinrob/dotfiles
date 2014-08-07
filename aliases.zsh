# Un-Aliases ###############################################################################
unalias todo

unalias gr

unalias cdb

unalias gcl

unalias c

unalias gb

unalias gi

unalias e

unalias gra

unalias gbd


# Aliases
###############################################################################

alias m="mate"

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

alias msz="mzsh"

alias ezsh="edit ~/.zshrc"

alias ezs="ezsh"

alias czsh="cat ~/.zshrc"

alias edit=$EDITOR

alias conf="edit ~/.ssh/config"

alias zshrc="edit ~/.zshrc"

alias phone="get_phone short"

alias phonelong="get_phone long"

POSTCODE="V6B 6H4"
alias postcode="echo $POSTCODE && echo $POSTCODE | pbcopy"

alias address="get_address home"

alias addresswork="get_address work"

OFFICE_POSTCODE="V6B 2Y5"
alias officepostcode="echo $OFFICE_POSTCODE && echo $OFFICE_POSTCODE | pbcopy"

alias nocchef="cd $NOCCHEF"

alias mschef="cd $MSCHEF"

alias password="ruby $RUBY_HOME/projects/rbpassword/rbpassword.rb"

alias rkp="rake pull"

alias fs="fab save"

alias tagalog="cd $QUIZ_HOME && ./quiz.rb -f $QUIZ_HOME/tagalog.csv -t 10 -g 3"

alias capitals="cd $QUIZ_HOME && ./quiz.rb -f $QUIZ_HOME/capitals.csv -t 10 -g 3"

alias sublime="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"

alias cardhsbc="get_card hsbc-debit"

alias cardrbc="get_card rbc-debit"

alias cardcredit="get_card rbc-credit"

alias gstat='cd $PROG_HOME && gs'

alias pb="pbcopy"

alias splu="mate $TEMP_HOME/splunk_searches.txt"

alias dpl="cd_pull $DOTFILES_HOME"

alias dsv="cd_save $DOTFILES_HOME"

alias dst="cd_status $DOTFILES_HOME"

alias DSV="dsv"

alias rsv="cd_save $RUBY_HOME"

alias rst="cd_status $RUBY_HOME"

alias RSV="rsv"

alias rpl="cd_pull $RUBY_HOME"

alias ssv="cd_save $SH_HOME"

alias spl="cd_pull $SH_HOME"

alias bsv="cd_save $BACKUPS_HOME"

alias bpl="cd_pull $BACKUPS_HOME"

alias jsv="cd_save $JS_HOME"

alias jst="cd_status $JS_HOME"

alias lpl="cd_pull $LOCAL_HOME"

alias lsv="cd_save $LOCAL_HOME"

alias lst="cd_status $LOCAL_HOME"

alias qpl="cd_pull $QUIZ_HOME"

alias qsv="cd_save $QUIZ_HOME"

alias screenshots="cd $SCREENSHOTS_HOME"

alias lasts="cd $SCREENSHOTS_HOME && lastf -s $SCREENSHOT_NAME"

alias dels="cd $SCREENSHOTS_HOME && rm Screen*"

alias gpd="git push origin develop"

alias gpm="git push origin master"

alias gpld="git push origin develop"

alias gplm="git push origin master"

alias conf="mate config.json"

alias fp="find $PWD -name "

alias gcm="git checkout master"

alias gcd="git checkout develop"

alias bi="bundle install"

alias rnsall="cd $SCREENSHOTS_HOME && despace"

alias msp="get_record $IMPORTANT_HOME/records/bc_msp.txt insurance"

alias mspaccount="get_record $IMPORTANT_HOME/records/bc_msp.txt account"

alias mal="mate $DOTFILES_HOME/aliases.zsh"

alias men="mate $DOTFILES_HOME/env_variables.zsh"

alias mfn="mate $DOTFILES_HOME/functions.zsh"

alias cdd="cd $DOTFILES_HOME"

alias cdb="cd $RUBY_HOME/projects/aws-backup-manager"

alias cdr="cd $RUBY_HOME"

alias cdjs="cd $JS_HOME"

alias cdj="cdjs"

alias cds="cd $SCREENSHOTS_HOME"

alias t="touch"

alias mmutt="mate ~/.mutt/muttrc"

alias gl="git log"

alias jnew="jsnew"

alias t2="t22"

alias t3="t3389"

alias jl="jsonlint"

alias bcodes="cat $IMPORTANT_HOME/passwords/Backup-codes-robin.smith.txt"

alias gcl="git clone"

alias cms="mate $TEMP_HOME/commands.txt"

alias nocknife="cd $NOCCHEF && knife"

alias msknife="cd $MSCHEF && knife"

alias kel="knife environment list"

alias knl="knife node list"

alias gsi="git submodule init"

alias gsu="git submodule update"

alias gsur="git submodule update --init --recursive"

alias gsa="git submodule add"

alias cgm="cat .gitmodules"

alias c="cat"

alias gro="git remote show origin"

alias rk="rake"

alias rfind="lib_find $RUBY_HOME"

alias lfind="lib_find $LOCAL_HOME"

alias dfind="lib_find $DOTFILES_HOME"

alias jsfind="lib_find $JS_HOME"

alias jfind="lib_find $JV_HOME"

alias cfind="lib_find $C_HOME"

alias sfind="lib_find $SH_HOME"

alias prfind="lib_find $PROG_HOME"

alias cleanhome="$SH_HOME/clean_home.sh"

alias emptytrash="rm -rf ~/.Trash/*"

alias cgi="cat .gitignore"

alias cx="chmod +x"

alias back="cd - > /dev/null"

alias bk="back"

alias kne="knife node edit --editor vim"

alias kee="knife environment edit --editor vim"

alias rki="rake install"

alias fbs="fab save"

alias cgc="cat ~/.gitconfig"

alias mgi="mate .gitignore"

alias gb="git branch"

alias gi="$EDITOR .gitignore"

alias mr="mate README.md"

alias er="$EDITOR README.md"

alias e="$EDITOR"

alias E="e"

alias skytrain="open $COMMON_DOCS_HOME/useful/vancouver_skytrain_map.pdf"

alias sky="skytrain"

alias tube="open $COMMON_DOCS_HOME/useful/tube_map.pdf"

alias pc="postcode"

alias ad="address"

alias ph="phone"

alias em="copy_print robin@mrrobinsmith.com"

alias eaws="$EDITOR $AWS_CONFIG"

alias editor="echo $EDITOR"

alias gcmr="git submodule foreach 'git checkout master'"

alias gsf="git submodule foreach"

alias sprog="du -dh $PROG_HOME"

alias spr="sprog"

alias sd="du -dh"

alias erk="edit rakefile"

alias prst="cd_status $PROG_HOME"

alias prsv="cd_save $PROG_HOME"

alias prc="cd_count_all $PROG_HOME"

alias cdpr="cd $PROG_HOME"

alias pst="cd_status $PY_HOME"

alias psv="cd_save $PY_HOME"

alias cdp="cd $PY_HOME"

alias rkc="rake count"

alias rka="rake count_all"

alias mkd="mkdir"

alias bb="open https://bitbucket.org/dashboard/overview"

alias bbc="open https://bitbucket.org/repo/create"

alias news="open https://bbc.co.uk/news"

alias gra="git remote add"

alias gsr="git submodule add git@bitbucket.org:robinrob/rakefile.git rake && ln -s rake/Rakefile Rakefile"

alias work="open http://mail.google.com http://zenoss.cloudreach.co.uk:8080/zport/dmd/Events/evconsole?submitted=true https://cloudreach.my.salesforce.com"

alias cdt="cd $TRASH_HOME"

alias mobileideas="$EDITOR $MERCURY_HOME/creative/mobile/ideas.txt"

alias mi="mobileideas"

alias gbd="git branch develop && git checkout develop"

alias gbm="git branch master && git checkout master	"

alias gch="git checkout"

alias plane="copy_print NQFLIZ"

alias pl="plane"

alias gclm="git clone -b master"

alias gclb="git clone -b "

alias cdrc="cd $RECEIPTS_HOME"

alias cdrp="cdrc"

alias gdoc="open 'https://drive.google.com/a/cloudreach.co.uk/templates?state=%7B%22folderId%22:%220AIV1py6VJXyMUk9PVA%22,%22action%22:%22create%22,%22userId%22:%22111853091861331127431%22%7D#'"

alias cms="edit $DOCS_HOME/commands.txt"