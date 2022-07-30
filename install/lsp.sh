#!/usr/bin/bash
function lua () {

git clone --depth=1 https://hub.fastgit.xyz/sumneko/lua-language-server
cd lua-language-server
git submodule update --init --recursive
cd 3rd/luamake
compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild
}

function bash () {
    sudo npm i -g bash-language-servevr
}

function gopls () {
    go install github.com/go-delve/delve/cmd/dlv@latest
    sudo apt install gopls
}

if [ ! -d "~/.installation/servers" ]
then
    mkdir ~/.installation/servers/
else
    echo "files exist"
fi

cd ~/.installation/servers/


#==============================================================================
#sumneko-lua
if [ ! -d "lua" ]
then
    mkdir lua && cd lua
    lua
else
    echo "Lua installed"
fi
#==============================================================================


cd ~/.installation/servers/
#==============================================================================
if [ ! -d "bash" ]
then
    mkdir bash && cd bash
    bash
else
    echo "bash alrady installed"
fi
#==============================================================================


cd ~/.installation/servers/
#==============================================================================
if [ ! -d "gopls" ]
then
    mkdir bash && cd bash
    gopls
else
    echo "gopls alrady installed"
fi
#==============================================================================
