#!/bin/bash

#	Backs up files and database of a retrospectiva instalation.
#	@Author: Matheus Elias Muller
#	@Email: hello at memuller dot com
#	@Copyright: Fundação João Paulo II - Brazil.
#	@Version: auto-generated, see git repository.

error(){
	echo "${1}"
	cd $OLD_DIRECTORY
	exit 1
}

info(){
	echo "${1}"
}

export OLD_DIRECTORY= "$(pwd)"
export REMOTE_USR="git"
export REMOTE_SVR="gitsvr"
export REMOTE_REPO_PATH="~/repositories/bare"
export REMOTE_REPO_CURRENT="~/repositories/current"
info "Insira o caminho para o repositório do aplicativo (ou nada para usar o diretório atual)"
read DIRECTORY
info "Insira o nome para este projeto no servidor (sem espaços, maiúsculas ou acentuação)"
read NAME

#changes to the directory
if [[ "$DIRECTORY" -ne "" ]]; then
	cd $DIRECTORY
fi

#checks if the directory is a git repo
if [[ $(git status >> /dev/null) -ne "0" ]]; then
	error "Diretório não é um repositório git, ou git não está instalado."
fi

#check if there's no repo with this name on the remote
ssh $REMOTE_USR@$REMOTE_SVR ls $REMOTE_REPO_PATH/$NAME >> /dev/null
if [[ "$?" == "0" ]]; then
	error "Já existe um repositório com este nome no servidor. Possivelmente já foi realizado upload do aplicativo; do contrário, escolha outro nome."
fi

#creates the repository
ssh $REMOTE_USR@$REMOTE_SVR "mkdir $REMOTE_REPO_PATH/$NAME; cd $REMOTE_REPO_PATH/$NAME; git init --bare"

#sets the newly created remote repo as origin
git checkout master
if [[ "$?" -ne "0" ]]; then
	error "Erro ao trocar branches. É preciso estar no branch master antes de realizar o upload."
fi
git remote add origin $REMOTE_USR@$REMOTE_SVR:$REMOTE_REPO_PATH/$NAME

#pushes to the server
git push origin master

#clones a current tree snapshot
ssh $REMOTE_USR@$REMOTE_SVR "mkdir $REMOTE_REPO_CURRENT/$NAME; cd $REMOTE_REPO_CURRENT/$NAME; git clone $REMOTE_REPO_PATH/$NAME"

#ends
cd $OLD_DIRECTORY
exit 0







