package Atari;

use strict;
use warnings;

use Dancer2;

set serializer => 'JSON';

get '/' => sub {
    return {
        message => "Still tickin'",
    };
};

1;

__END__

# ABSTRACT: Simple Dancer2 Demo App - Does a thing, kinda
