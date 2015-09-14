requires "Dancer2" => "0";
requires "strict" => "0";
requires "warnings" => "0";

on 'test' => sub {
  requires "Exporter" => "0";
  requires "HTTP::Request::Common" => "0";
  requires "Plack::Test" => "0";
  requires "Test::Modern" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
};
