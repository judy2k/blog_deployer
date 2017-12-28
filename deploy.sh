#!/bin/bash

repo=${REPO:-git@bitbucket.org:judy2k/judy.co.uk.git}
repo_key=${REPO_KEY:-/etc/blog_downloader/repo_key}
hash=${HASH:-master}
vardir=${VAR_DIR:-/var/blog_downloader}

function main {
    echo "Repo: $repo"
    echo "Repo key: $repo_key"
    echo "Hash: $hash"
    
    if [[ ! -d $vardir ]]; then
        mkdir $vardir
        chmod 0700 $vardir
    fi

    checkout_dir=$vardir/checkout
    
    git checkout $repo 
}

main