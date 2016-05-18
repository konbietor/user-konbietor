#!/usr/bin/env bash


SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

### Hidden files ###
alias shf='defaults write com.apple.finder AppleShowAllFiles -boolean true  ; killall Finder'
alias hhf='defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder'

### Base directories ###
SOFTWARE_HOME=~/Software
GITHUB_DIR=~/GitHub

### Home directories export ###
#export JAVA_HOME=$SOFTWARE_HOME/Java/jdk1.6.0_38
#export GIT_HOME=/usr/local/git
export MVN_HOME=$SOFTWARE_HOME/Maven/apache-maven-3.3.3
export JREBEL_HOME=$SOFTWARE_HOME/JRebel/jrebel-5.5
export GRADLE_HOME=/Applications/gradle-2.6
export SONAR_RUNNER_HOME=/Applications/sonar-runner-2.4


### Maven ###
#alias mvni='mvn -T 1C clean install -P jrebel -DskipTests=true'
alias mvni='mvn clean install -P jrebel -DskipTests=true'
#alias mvnit='mvn -T 1C clean install -P jrebel'
alias mvnit='mvn clean install -P jrebel'
#alias mvnt='mvn -T 1C test'
alias mvnt='mvn test'
alias it='mvn verify -P it'
alias sb='mvn spring-boot:run'
alias sonar='mvn org.codehaus.mojo:sonar-maven-plugin:2.5:sonar'


### Gradle ###
alias     gcb='gradle --daemon clean build'
alias  gcbdev='gcb -Dsdbapi.env=dev'
alias     gbr='gradle --daemon bootRun'
alias     gsb='gbr'
alias  gitest='gradle --daemon integrationTest'
alias gsingle='gradle clean integrationTest --daemon --info --tests '


### Git  ###
alias   gpsh='git push'
alias    gpl='git pull --ff-only'
alias    gaa='git add .;git status'
alias    gco='git commit'
alias    gch='git checkout'
alias     gs='git status'
alias gchdev='git checkout develop'
alias gchrel='git checkout release/current'
alias gchthb='git checkout feature/rfos-830-aggregate-for-groupings'
alias gb='git branch'
alias gbdl='git branch -d '
alias gbdr='git push origin --delete '



### Jetty ###
alias       j='sh jetty.sh'
alias      jr='sh jetty.sh jrebel'


### Grunt ###
alias    grs='grunt serve'

### Diverse ####
alias     vpn='cd $GITHUB_DIR/f5vpn-login; sudo python f5vpn-login.py konbietor@firepass.tine.no'

### NDX ###
alias copytondxtst='scp target/ndx.jar ndx@tsttrmapp66601:apps/ndx.jar'
alias    sshndxtst='ssh ndx@tsttrmapp66601.tine.no'


### Change directory ###
alias    uk='cd $GITHUB_DIR/user-konbietor; bashrc'
alias    gh='cd $GITHUB_DIR'
alias  reku='cd $GITHUB_DIR/ReKu; bashrc'
alias rekui='cd $GITHUB_DIR/ReKu/reku-api/api-impl; bashrc'
alias rekua='cd $GITHUB_DIR/ReKu/reku-api; bashrc'
alias rekud='cd $GITHUB_DIR/ReKu/reku-domain; bashrc'
alias rapps='cd $GITHUB_DIR/buildtools/rekuapps; bashrc'
alias  mink='cd $GITHUB_DIR/minedata-kk; bashrc'
alias rekuj='cd $GITHUB_DIR/ReKu/reku-jobs; bashrc'
alias rekub='cd $GITHUB_DIR/ReKu/reku-jobs/batch; bashrc'
alias rekus='cd $GITHUB_DIR/ReKu/reku-services; bashrc'
alias  geno='cd $GITHUB_DIR/geno; bashrc'
alias    ek='cd $GITHUB_DIR/ek'
alias   tbs='cd $GITHUB_DIR/tbs'
alias   ndx='cd $GITHUB_DIR/ndx'


### TBS ###
alias    sshtbstst='ssh tbs@tsttrmapp66601'
alias     sshtbsqa='ssh tbs@qatrmapp10001'
alias   sshtbsprod='ssh tbs@trmapp10001.tine.no'
alias copytotbstst='scp build/libs/backend-0.1-SNAPSHOT.jar tbs@tsttrmapp66601:apps/tbs-backend.jar'
alias  copytotbsqa='scp build/libs/backend-0.1-SNAPSHOT.jar tbs@qatrmapp10001:apps/tbs-backend.jar'


### CoffeeScript ###
alias genocoffee='coffee -wc ~/GitHub/geno/web/src/main/webapp/javascript/*.coffee ~/GitHub/geno/web/src/main/webapp/javascript/*/*.coffee'

### Path ###
# (Requires $JAVA_HOME and $GIT_HOME to be set)
export PATH=$PATH:$JAVA_HOME/bin:$GIT_HOME/cmd:$MVN_HOME/bin:$GRADLE_HOME/bin:$SONAR_RUNNER_HOME/bin

### Maven ###
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=256m'


### Linux ###
alias lsdirs='ls -dl */'
alias   cd..='cd ..'

### Bash profile ###
alias reload='source ~/.bash_profile'
alias  bashrc='source "${HOME}/.bashrc"'
alias    list='cat $SCRIPT_DIR/bash_profile.sh'