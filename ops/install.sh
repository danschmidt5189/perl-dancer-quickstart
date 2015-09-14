#!/usr/bin/env bash

# Assumes a linux distro (for apt-get)
# If you're on OSX, you'll want to check out perlbrew, or just use system Perl.

install_dir=${1:-locallib}

if ! hash perl 2>/dev/null; then
    echo "Installing Perl...";
    sudo apt-get update -qq;
    sudo apt-get install perl;
fi

if ! hash cpanm 2>/dev/null; then
    echo "Installing cpanminus and local::lib...";
    curl -L https://cpanmin.us | perl - -l ~/perl5 App::cpanminus local::lib;
fi

# Setup local::lib in your default path
if ! grep -q local::lib ~/.bashrc; then
    echo "eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)" >> ~/.bashrc;
fi

# --notest speeds things up, but you'll usually want to run them!
echo "Installing project dependencies to $install_dir...";
cpanm --local-lib $install_dir --notest --quiet --installdeps .
