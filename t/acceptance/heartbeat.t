use strict;
use warnings;

use t::lib::Common qw(app);

use HTTP::Request::Common;
use Plack::Test;
use Test::Modern qw(!TD :more use_ok);

subtest "You can request the app's root endpoint for a heartbeat" => sub {
    my $app = app;

    my $res = $app->request( GET '/' );
    ok $res->is_success, '... Responds with a 200 OK';
};

done_testing;
