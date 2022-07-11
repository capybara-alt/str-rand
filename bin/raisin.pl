use FindBin;
use lib "$FindBin::Bin/../lib";

use strict;
use warnings;
use Raisin::API;

api_format 'json';
api_version '1.0.0';

desc 'Generate Random String from regex pattern.';
mount 'API::Route';

run;