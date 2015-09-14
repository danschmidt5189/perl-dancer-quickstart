#!/usr/bin/env bash

# Assumes a linux container (for apt-get) and that you ran install.sh
# If you're on OSX, you'll want to check out perlbrew, or just use system Perl.

prove --lib ${PERL_PROVE_OPTS:- --merge --recurse --timer --verbose} $@
