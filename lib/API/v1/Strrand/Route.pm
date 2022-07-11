# Service::generateの結果を返す

use Exporter;
our @ISA= qw( Exporter );
our @EXPORT = qw( strrand );

use strict;
use warnings;
use Raisin::API;
use Types::Standard qw(Str);
use lib ('./lib/API/v1/Strrand/');
use Service;

resource strrand  => sub {
    params (
        requires('p', type => Str, desc => 'Regex Pattern')
    );
    get '' => sub {
        my $self = shift;
        res->status(200);
        res->headers([ 'Content-Type' => 'application/json' ]);
        res->body({ 'result' => generate($self->{p}) });
    };
};

1;