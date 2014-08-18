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

unalias sd

unalias gg


# Aliases
###############################################################################

# Tools

alias m="mate"

alias sublime="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"

# Shell operations

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

alias nocchef="cd $NOCCHEF"

alias mschef="cd $MSCHEF"

# Shortcuts

alias residency="$ADOBE_PATH $CANADA_HOME/residency_form.pdf"

alias sabihin="song sabihin_mo_na"

alias sb="sabihin"

alias tagalog="cd $QUIZ_HOME && ./quiz.rb -f $QUIZ_HOME/tagalog.csv -t 10 -g 3"

alias capitals="cd $QUIZ_HOME && ./quiz.rb -f $QUIZ_HOME/capitals.csv -t 10 -g 3"

alias mr="mate $RECORDS_PATH"

alias erec="$EDITOR $RECORDS_PATH"

alias cms="edit $DOCS_HOME/commands.txt"

alias cdk="cd $KITCHENPLAN_HOME"

alias cddl="cd ~/Downloads"

alias cdmv="cd ~/Movies"

alias rksr="rake -f $RAKEFILE_HOME/Rakefile save"

alias password="ruby $RUBY_HOME/projects/rbpassword/rbpassword.rb"

alias rk="rake"

alias rfind="lib_find $RUBY_HOME"

alias pfind="lib_find $PYTHON_HOME"

alias lfind="lib_find $LOCAL_HOME"

alias dfind="lib_find $DOTFILES_HOME"

alias jsfind="lib_find $JS_HOME"

alias jfind="lib_find $JV_HOME"

alias cfind="lib_find $C_HOME"

alias sfind="lib_find $SH_HOME"

alias prfind="lib_find $PROG_HOME"

alias afind="lib_find $AWK_HOME"

alias cdms="cd $MSCHEF"

alias cdnoc="cd $NOCCHEF"


# Development operations

alias save="rake -f $GLOBAL_RAKEFILE_HOME/Rakefile save_code"

alias sv="save"

alias rkp="rake pull"

alias rku="rakeup"

alias rkd="rakedown"

alias fbu="fabup"

alias fbd="fabdown"

alias anew="new awk awk"

alias pnew="new python py"

alias bnew="new bash sh"

alias snew="new sh sh"

alias znew="new zsh zsh"

alias rnew="new ruby rb"

alias jsnew="new node js"

alias tnew="new txt"

alias demo="open $MOBILEAPP_HOME/www/index.html"


# Git aliases

alias gsi="git submodule init"

alias gsu="git submodule update"

alias gsur="git submodule update --init --recursive"

alias gsa="git submodule add"

alias cgm="cat .gitmodules"

alias gro="git_remote"

alias grh="git reset HEAD"


# Git Repos
alias dpl="cd_pull $DOTFILES_HOME"

alias dsv="svwb; cd_save $DOTFILES_HOME"

alias dst="cd_status $DOTFILES_HOME"

alias DSV="dsv"

alias rsv="cd_save $RUBY_HOME"

alias rst="cd_status $RUBY_HOME"

alias RSV="rsv"

alias rpl="cd_pull $RUBY_HOME"

alias fpl="fab pull"

alias ssv="cd_save $SH_HOME"

alias ssv="cd_save $SH_HOME"

alias sst="cd_status $SH_HOME"

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

alias cdm="cd $JS_HOME/projects"

alias cdmb="cd $JS_HOME/projects/mobile-app-cordova"

alias cdg="cd $JS_HOME/projects/mobile-game-cocos"

alias cdb="cd $RUBY_HOME/projects/aws-backup-manager"

alias cdr="cd $RUBY_HOME"

alias cdrk="cd $RAKEFILE_HOME"

alias cdz="cd $ZSH_HOME"

alias cda="cd $AWK_HOME"

alias cdwr="cd $WORK_RUBY_HOME"

alias cdsh="cd $SH_HOME"

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

# Chef
alias kel="knife environment list"

alias knl="knife node list"


#Shortcuts

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

alias mgm="mate .gitmodules"

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

alias cdp2="cd $PY_HOME/python2"

alias cdp3="cd $PY_HOME/python3"

alias rkc="rake count"

alias rka="rake count_all"

alias mkd="mkdir"

alias gra="git remote add"

alias gsr="git submodule add git@bitbucket.org:robinrob/rakefile.git rake && ln -s rake/Rakefile Rakefile"

alias cdt="cd $TRASH_HOME"

alias mobileideas="$EDITOR $MERCURY_HOME/creative/mobile/ideas.txt"

alias mi="mobileideas"

alias gbd="git branch develop && git checkout develop"

alias gbx="git branch -d"

alias gbm="git branch master && git checkout master	"

alias gch="git checkout"

alias plane="copy_print NQFLIZ"

alias pl="plane"

alias gclm="git clone -b master"

alias gclb="git clone -b "

alias cdrc="cd $RECEIPTS_HOME"

alias cdrp="cdrc"

alias c="cat"

alias gstat='cd $PROG_HOME && gs'

alias pb="pbcopy"

alias splu="mate $TEMP_HOME/splunk_searches.txt"

# Web shortcuts
alias gdoc="open 'https://drive.google.com/a/cloudreach.co.uk/templates?state=%7B%22folderId%22:%220AIV1py6VJXyMUk9PVA%22,%22action%22:%22create%22,%22userId%22:%22111853091861331127431%22%7D#'"

alias book="open http://my.safaribooksonline.com/book/programming/mobile/9781783287925"

alias wk="wiki"

alias sf="safari"

alias gg="google"

alias cms="edit $DOCS_HOME/commands.txt"

alias work="open http://mail.google.com http://zenoss.cloudreach.co.uk:8080/zport/dmd/Events/evconsole?submitted=true https://cloudreach.my.salesforce.com"

alias bbh="open https://bitbucket.org/dashboard/overview"

alias bbc="open https://bitbucket.org/repo/create"

alias news="open https://bbc.co.uk/news"

alias learmount="open http://www.flightglobal.com/blogs/learmount"

# Records
alias erec="$EDITOR $IMPORTANT_HOME/records/record.txt"

alias mrec="mate $RECORDS_PATH"

alias cardcredit="get_record rbc-credit"

alias cardhsbc="get_record hsbc-debit"

alias cardrbc="get_record rbc-debit"

alias docsec1="get_record doctors_secretary1"

alias docsec2="get_record doctors_secretary2"

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

# Information

alias skytrain="open $USEFUL_HOME/vancouver_skytrain_map.pdf"

alias sky="skytrain"

# Screenshots

alias screenshots="cd $SCREENSHOTS_HOME"

alias lasts="cd $SCREENSHOTS_HOME && lastf -s $SCREENSHOT_NAME"

alias dels="cd $SCREENSHOTS_HOME && rm Screen*"

alias up2="pythonbrew use 2.7"

alias up3="pythonbrew use 3.2"

alias p2="~/.pythonbrew/pythons/Python-2.7/bin/python"

alias p3="~/.pythonbrew/pythons/Python-3.2/bin/python3"

# Synonyms

alias wh="which"

alias chrome="$CHROME_PATH"

alias adobe="$ADOBE_PATH"

alias chr="chrome"

# Aliases

alias lsl="ls -l"

alias isgit="show_git"

alias isg="isgit"

alias igi="isgit"

# ls 'full'
alias lsf="ls $PWD/*"

# ls 'absolute'
alias lsa="lsf"

alias shell="echo $SHELL"

alias dir="dirname"

alias cdcocos="cd $COCOS_HOME"