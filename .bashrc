alias checkouts="cd /d/dev/checkout/"

# git stuff
alias gs="git status"
alias changes="git log -p"
alias diff="git diff --ignore-space-change"
alias diffStaged="git diff --cached --ignore-space-change"
alias diffFiles="git log --stat"
alias diffDevelop="git log -p origin/develop..HEAD"
alias diffDavy="git log --author=rori -p"
alias diffGreg="git log --author=cowan -p"
alias diffEric="git log --author=malo -p"
alias diffJh="git log --author=kupe -p"


alias phpstorm='/c/Program\ Files\ \(x86\)/JetBrains/PhpStorm\ 9.0.2/bin/PhpStorm64.exe $PWD &'
alias reload=". ~/.bashrc"
alias aliasHelp="printf \"\n\n.bashrc contents: \n\n------------\n\n\" &&  cat ~/.bashrc"
alias la="ls -la"


# mvn stuff
alias mvnRun="mvn tomcat7:run"
alias mvnRunQuick="mvn tomcat7:run -P!frontend-build"
alias mvnRunStub="mvn tomcat7:run -Pstub"
alias mvnRunNocca="mvn tomcat7:run -Pnocca"
alias mvnQuick="mvn clean install -DskipTests=true"

# mya stuff
## mya dirs
alias mya="cd /d/dev/checkout/mya/"
alias myaGui="mya && cd gui/mya-user-interface-web"
alias myaNode="myaGui && cd src/main/node"
alias myaApp="myaGui && cd src/main/static/app"

## mya commands
# Run MyA without building frontend
alias myaRunQuick="myaGui && mvnRunQuick"
# Run MyA, include building frontend
alias myaRun="myaGui && mvnRun"
# Run MyA on Stub profile
alias myaStub="myaGui && mvnRunStub"
# Run MyA on Stub profile
alias myaNocca="myaGui && mvnRunNocca"
# Reinstall MyA but skip tests
alias myaQuick="mya && mvnQuick"
# Run MyA watcher
alias myaWatch="myaNode && npm run watch"
# Run MyA E2E tests
alias myaE2e="myaNode && npm run test-e2e"

# command for running tests as used by package.json
alias runTest="myaNode && gulp --gulpfile ./test/app.js --cwd ./  protractorE2E"
alias runLocalTest="myaNode && gulp --gulpfile ./test/app.js --cwd ./  protractorE2E --noccaUrl=http://localhost:8989"

# npm stuff
## what is installed in current dir?
alias npmVersions="npm list --depth=0 --silent"
## what is installed on the global?
alias npmGlobals="npm list -g --depth=0 --silent"
## where are my globals installed?
alias npmDir="npm prefix -g"

# node stuff
## goto package.json folder of parent
alias nRoot="cd `npm prefix | tr '\\\\' '/'`"

# properly clear the buffer
alias cls='printf "\033c"'

. ~/sh/z.sh

export OPENSSL_CONF=/d/dev/tools/Git/ssl/openssl.cnf
