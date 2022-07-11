# アプリ全体のルーティング

require Exporter;
our @ISA = qw(Exporter); 
our @EXPORT_OK = qw(api v1); 

use strict;
use warnings;
use Raisin::API;

resource api => sub {
    resource v1 => sub {
        mount 'API::v1::Strrand::Route';
    }
};

1;
