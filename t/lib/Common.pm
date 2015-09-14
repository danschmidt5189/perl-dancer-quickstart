package t::lib::Common;

use strict;
use warnings;

use Atari;
use Exporter qw(import);
use Plack::Test;

our @EXPORT_OK = qw(app);

sub app () {
    return Plack::Test->create( Atari->to_app );
}

1;
