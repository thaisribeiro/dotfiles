#!/usr/bin/env bash
source ./lib.sh

#####
# Introduction
#####

awesome_header

bot "Instalando extensões de código do Visual Studio e config."

code -v > /dev/null
if [[ $? -eq 0 ]];then
    read -r -p "Deseja instalar extensões do VSCode? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        ok "Instalando Extensões, por favor aguarde..."
        code --install-extension TwentyChung.jsx
        code --install-extension anseki.vscode-color
        code --install-extension bibhasdn.django-html
        code --install-extension christian-kohler.npm-intellisense
        code --install-extension dbaeumer.vscode-eslint
        code --install-extension donjayamanne.python
        code --install-extension dzannotti.vscode-babel-coloring
        code --install-extension eg2.vscode-npm-script
        code --install-extension qinjia.seti-icons
        code --install-extension t-sauer.autolinting-for-javascript
        code --install-extension timothymclane.react-redux-es6-snippets
        code --install-extension Zignd.html-css-class-completion
        code --install-extension abusaidm.html-snippets
        code --install-extension christian-kohler.path-intellisense
        code --install-extension mohsen1.prettify-json
        code --install-extension robinbentley.sass-indented
        code --install-extension mrmlnc.vscode-scss
        code --install-extension cssho.vscode-svgviewer
        code --install-extension bogdan-sinitsa.theme-dark-monokai
        code --install-extension whtouche.vscode-js-console-utils
        code --install-extension wix.vscode-import-cost

        ok "Extensões instaladas, dê restart no seu VSCode"
    else
        ok "Adeus.";
    fi

    read -r -p "Deseja sobrescrever a configuração do usuário? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        read -r -p "Deseja fazer backup da configuração atual do usuário? [Y|n] " backupresponse
        if [[ $backupresponse =~ ^(n|no|N) ]];then
            ok "Ignorando a configuração do usuário"
        else
            cp $HOME/.config/Code/User/settings.json $HOME/.config/Code/User/settings.backup.json
            ok "Sua configuração anterior foi salva em: $HOME/.config/Code/User/settings.backup.json"
        fi
        cp ./settings.json $HOME/.config/Code/User/settings.json

        ok "Nova configuração adicionada, reinicie o VSCode"
    else
        ok "Adeus.";
    fi
else
    error "Parece que o comando 'code' não é acessível"
    error "or favor, verifique se você tem o Visual Studio Code instalado"
    error "Qualquer coisa veja isso https://code.visualstudio.com/docs/setup/linux"
fi