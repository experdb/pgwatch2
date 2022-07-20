#!/bin/bash

go_on_path=$(which go)
if [ -z "$go_on_path" ] ; then
    export PATH=$PATH:/usr/local/go/bin
fi

# not needed since switching to "Go modules"
#./get_dependencies.sh

echo "running 'go build experdbc.go prom.go patroni.go logparse.go' ..."

#go build experdbc.go prom.go patroni.go logparse.go
go build experdbc.go

#if [ -n "$GIT_TIME" -a -n "$GIT_HASH" ] ; then
#  echo "running (1): go build -ldflags \"-X main.commit=$GIT_HASH -X main.date=$GIT_TIME\" experdbc.go prom.go patroni.go logparse.go"
#  go build -ldflags "-X main.commit=$GIT_HASH -X main.date=$GIT_TIME" experdbc.go prom.go patroni.go logparse.go
#
#elif [ -f build_git_version.txt ] ; then
#    # Dockerfile build fills the file with HEAD hash
#    echo "running (2): go build -ldflags \"-X main.commit=`cat build_git_version.txt`\" experdbc.go prom.go patroni.go logparse.go"
##    go build -ldflags "-X main.commit=`cat build_git_version.txt`" experdbc.go prom.go patroni.go logparse.go
#    go build -ldflags "-X main.commit=`cat build_git_version.txt`" pgwatch2.go prom.go patroni.go logparse.go
#else
#
#  git_on_path=$(which git)
#  # assuming located in experdbc Git repo ...
#  if [ -n "$git_on_path" -a -f experdbc.go ] ; then
#    COMMIT=`git show -s --format=%H HEAD`
#    DATE=`git show -s --format=%cI HEAD`
#    echo "running (3): go build -ldflags \"-X main.commit=$COMMIT -X main.date=$DATE\" experdbc.go prom.go patroni.go logparse.go"
#    go build -ldflags "-X main.commit=$COMMIT -X main.date=$DATE" experdbc.go prom.go patroni.go logparse.go
#  else
#    echo "running (4): go build experdbc.go prom.go patroni.go logparse.go" # no  version info
#    go build experdbc.go prom.go patroni.go logparse.go
#  fi
#
#fi
