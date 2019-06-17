dotfiles () {
    # git clone dotfiles from somewhere
}


general_packages () {
    sudo apt-get install -y git \
        nmon \
        build-essentials
}

helm () {
    cd ~/Downloads
    wget https://storage.googleapis.com/kubernetes-helm/helm-v2.14.0-rc.2-linux-amd64.tar.gz
    tar -zxvf helm-v2.14.0-rc.2-linux-amd64.tar.gz
    sudo mv ./linux-amd64/helm /usr/local/bin/helm
    sudo mv ./linux-amd64/tiller /usr/local/bin/tiller
}

local-charts () {
    cd ~/workspace/wikimedia/operations
    git clone ssh://gerrit.wikimedia.org:29418/releng/local-charts
    make install
}