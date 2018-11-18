#!/bin/bash

set -x 

function fix_previous_installs(){
    echo 'Fixing previous installations...'
    sudo dpkg --configure -a
    sudo rm -rf /etc/apt/sources.list.d/webupd8team-java.list
    sudo apt-get update
    echo 'Finished fixing.'
}

function install_docker(){
    echo 'Installing docker ...'
    sudo add-apt-repository ppa:webupd8team/java -y
    sudo apt-get -y update
    sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key  fingerprint 0EBFCD88
    sudo add-apt-repository  -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get -y update
    sudo apt-get -y install docker-ce
    echo 'Finished docker install.'
}

function install_docker_compose(){
    echo 'Installing docker-compose...'
    sudo curl -L --fail https://github.com/docker/compose/releases/download/1.23.1/run.sh -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo 'Finished docker-compose install.'
}

function install_java(){
    echo 'Installing Java...'
    echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
    echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
    sudo apt-get install oracle-java8-installer -y
    echo 'Finished Java install.'
}

function install_maven(){
    echo 'Installing Maven...'
    declare -r apacheMavenDownloadUrl="http://apache.cbox.biz/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz"
    declare -r directoryName="mvn/"

    if [[ $apacheMavenDownloadUrl =~ ([^/]+)\-bin\.tar\.gz$ ]]
    then
        declare -r resultFileName=$BASH_REMATCH
        declare -r resultDirectoryName=${BASH_REMATCH[1]}
    else
        printf "\nIncorrcet format of Apache Maven download url!\n"
        exit 1
    fi

    mkdir $directoryName
    cd $directoryName

    wget $apacheMavenDownloadUrl
    tar -zxf $resultFileName
    declare -r workingDir=$(pwd)

    sudo ln -s "$workingDir/$resultDirectoryName/bin/mvn" /usr/local/bin/mvn
    rm -v $resultFileName

    echo 'Finished maven install.'
}

echo 'Initializing server...'
fix_previous_installs
install_docker
install_docker_compose
install_java
install_maven
echo 'Installation complete.'