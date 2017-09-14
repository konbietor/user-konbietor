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
export SONAR_RUNNER_HOME=/Applications/sonar-runner-2.4

export ADR_HOME=/Applications/adr-tools-2.1.0/src


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
alias       gw='../gradlew'

alias     gwbr='../gradlew bootRun'
alias     gwcb='../gradlew --daemon clean build'
alias      gwt='../gradlew clean test -x integrationTest  --daemon --info'
alias     gwit='../gradlew clean integrationTest --daemon --info'
alias    gwsit='../gradlew clean integrationTest --daemon --info --tests '

#alias  gradle='gradlew'
alias gradlew='./gradlew'
alias     gcb='gradlew --daemon clean build'
alias  gcbdev='gcb -Dsdbapi.env=dev'
alias     gbr='gradlew bootRun'
alias     gsb='gbr'
alias  gitest='gradlew --daemon integrationTest'
alias gsingle='gradlew clean integrationTest --daemon --info --tests '



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
alias     ekj='sh jetty.sh key-numbers-min'
alias   jreku='sh jetty.sh test non-embedded'

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
alias   hz='cd $GITHUB_DIR/tine-hazelcast'
alias  hzs='cd $GITHUB_DIR/tine-hazelcast/server'
alias  hzr='cd $GITHUB_DIR/tine-hazelcast/api-runtime'
alias  fel='cd $GITHUB_DIR/fellesbeite'
alias  fru='cd $GITHUB_DIR/produksjonskontroll-fruktbarhet'
alias  hel='cd $GITHUB_DIR/produksjonskontroll-helse'
alias   ba='cd backend'
alias   up='cd ..'
alias   f='cd frontend'
alias   b='cd backend'


### TBS ###
alias     sshtbstst='ssh tbs@tsttrmapp66601'
alias      sshtbsqa='ssh tbs@qatrmapp10001'
alias    sshtbsprod='ssh tbs@trmapp10001.tine.no'
alias  copytotbstst='scp build/libs/backend-0.1-SNAPSHOT.jar tbs@tsttrmapp66601:apps/tbs-backend.jar'
alias   copytotbsqa='scp build/libs/backend-0.1-SNAPSHOT.jar tbs@qatrmapp10001:apps/tbs-backend.jar'

### GRID ###
alias  sshgridprod1='ssh grid@trmapp10004.tine.no'
alias  sshgridprod2='ssh grid@trmapp10005.tine.no'
alias sshgridapitst='ssh hz@tsttrmapp66602'
alias  sshgridapiqa='ssh hz@qatrmapp10002.tine.no'

### REKU ###
alias    sshrekutst='ssh reku@tsttrmku10001.tine.no'
alias     sshrekuqa='ssh reku@qatrmku10001.tine.no'

### Rekuapps ###
alias sshrekuappsprod='ssh rekuapps@trmku10002.tine.no'

### EK ###
alias     sshektest='ssh ek@tsttrmapp66601.tine.no'
alias       sshekqa='ssh ek@qatrmapp10001.tine.no'
alias     sshekprod='ssh ek@trmapp10001.tine.no'

### Fellesbeite ###
alias     sshfeltst='ssh fellesbeite@tsttrmapp66601'
alias      sshfelqa='ssh fellesbeite@qatrmapp10001'
alias    sshfelprod='ssh fellesbeite@trmapp10001.tine.no'

### Melkekvalitet ###
alias   sshmkvaltst='ssh melkekvalitet@tsttrmapp66602.tine.no'

### Melkekvalitet ###
alias   sshmkvaltst='ssh melkekvalitet@tsttrmapp66602.tine.no'

### AdvisorAdmin ###
alias     sshadvtst='ssh advisoradmin@tsttrmapp66601.tine.no'

### CoffeeScript ###
alias genocoffee='coffee -wc ~/GitHub/geno/web/src/main/webapp/javascript/*.coffee ~/GitHub/geno/web/src/main/webapp/javascript/*/*.coffee'

### ADR TOOL ###
alias        adr=$ADR_HOME/adr

### Path ###
# (Requires $JAVA_HOME and $GIT_HOME to be set)
export PATH=$PATH:$JAVA_HOME/bin:$GIT_HOME/cmd:$MVN_HOME/bin:$SONAR_RUNNER_HOME/bin

### Maven ###
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=256m'


### Linux ###
alias lsdirs='ls -dl */'
alias   cd..='cd ..'

### Bash profile ###
alias reload='source ~/.bash_profile'
alias  bashrc='source "${HOME}/.bashrc"'
alias    list='cat $SCRIPT_DIR/bash_profile.sh'
