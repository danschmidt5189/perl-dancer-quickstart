#!/usr/bin/env bash

# Assumes a linux container (for apt-get)
# If you're on OSX, you'll want to check out perlbrew, or just use system Perl.

if ! hash perl 2>/dev/null; then
    echo "Installing Perl...";
    sudo apt-get update -qq;
    sudo apt-get install perl;
fi

if ! hash cpanm 2>/dev/null; then
    echo "Installing cpanminus...";
    curl -L https://cpanmin.us | perl - -l ~/perl5 App::cpanminus;
fi

# --notest speeds things up, but you'll usually want to run them!
cpanm --installdeps . $@
