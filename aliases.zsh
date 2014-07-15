# Aliases
###############################################################################

alias m="mate"

alias rs="source ~/.zshrc"

alias RS="source ~/.zshrc"

alias save="rake -f $GLOBAL_RAKEFILE_HOME/Rakefile save_code"

alias vconf="vim ~/.ssh/config"

alias mconf="mate ~/.ssh/config"

alias vzsh="vim ~/.zshrc"

alias mzsh="mate ~/.zshrc"

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

alias rks="rake save"

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

alias spl="mate $TEMP_HOME/splunk_searches.txt"

alias dpl="cd_pull $DOTFILES_HOME"

alias dsv="cd_save $DOTFILES_HOME"

alias bsv="cd_save $BACKUPS_HOME"

alias jsv="cd_save $JS_HOME"

alias lpl="cd_pull $LOCAL_HOME"

alias lsv="cd_save $LOCAL_HOME"

alias qpl="cd_pull $QUIZ_HOME"

alias qsv="cd_save $QUIZ_HOME"

alias screenshots="cd $SCREENSHOTS_HOME"

alias lasts="cd $SCREENSHOTS_HOME && lastf -s $SCREENSHOT_NAME"

alias dels="cd $SCREENSHOTS_HOME && rm Screen*"

alias gpd="git pull origin develop"

alias gpm="git pull origin master"

alias conf="mate config.json"

alias fp="find $PWD -name "

alias gcm="git checkout master"

alias gcd="git checkout develop"

alias bi="bundle install"

alias rnsall="cd $SCREENSHOTS_HOME && despace"

alias msp="copy_print `cat $IMPORTANT_HOME/records/bc_msp.txt`"

alias mal="mate $DOTFILES_HOME/aliases.zsh"

alias men="mate $DOTFILES_HOME/env_variables.zsh"

alias mfn="mate $DOTFILES_HOME/functions.zsh"

alias cdd="cd $DOTFILES_HOME"

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


# Un-Aliases
###############################################################################
unalias todo

unalias gr