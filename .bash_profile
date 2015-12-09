export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#This is for unity
alias unity="/Applications/Unity/Unity.app/Contents/MacOS/Unity&"
#export PATH=$PATH:/bin:/usr/bin:/usr/localbin
#for mongo
export PATH=$PATH:/bin:/usr/bin:/usr/localbin:/Users/jlian/.npm-packages/lib/node_modules/npm/bin/npm-cli.js
#export PATH=$PATH:/bin:/usr/bin:/usr/localbin:/Users/jlian/.npm-packages/lib/
export PATH=//Users/jlian/.npm-packages/lib/node_modules/npm/bin/npm-cli.js:$PATH
export PATH=/Users/jlian/mongodb/bin:$PATH
#This is for me being lazy only want to see file names:
alias lsname="ls -1 . | sed -e 's/\.[a-z]\{3\}$//'"

#These for fingerfod specific
#go to the asset directory and open it
alias aopen="cd /Users/jlian/slot-dev-mobile/assets_project/Assets && open ." 
alias ichanged="git itouch | sort -u"

#for serial
alias serial="system_profiler SPHardwareDataType | awk '/Serial/ {print $4}'"

#for bms_cloud
alias featuretest="cowsay -f dragon 'grunt e2etest roar....' && grunt e2etest"
alias serve="cowsay -f tux 'grunt serve ... I miss my Linux buddies' && grunt serve"
alias ni="npm install"
alias utest="cowsay -f milk 'grunt unittest with your coffee...' && grunt unittest"
alias test="grunt e2etest"
#must run this in the bms cloud directory
alias phan="node_modules/phantomjs2/bin/phantomjs --webdriver=4444"
alias sel="selenium-standalone start"
alias mocha="cowsay -f turtle 'mochaTest:e2e' && grunt mochaTest:e2e"
#entertainment
alias starwars="telnet towel.blinkenlights.nl"
#external tools
alias docpad="docpad run"
#for IBM bluemix
alias pushbluemix="cf push partners2015 -b https://github.com/cloudfoundry-community/cf-meteor-buildpack.git --no-start"
alias startbluemix="cf start partners2015"
#ONE OFFS
# show all the folders
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false"
alias unitTestOnly="grunt exec:kill8000 dynamoDbTables:test && grunt mochaTest:unit"
#GIT
#stash with name
alias stashname="git stash save"
alias google="open -a Lynxlet http://www.google.ca/"

##
# Your previous /Users/jlian/.bash_profile file was backed up as /Users/jlian/.bash_profile.macports-saved_2015-11-18_at_14:43:36
##

# MacPorts Installer addition on 2015-11-18_at_14:43:36: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

