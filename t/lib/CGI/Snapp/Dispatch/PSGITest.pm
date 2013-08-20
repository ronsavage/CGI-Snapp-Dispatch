package CGI::Snapp::Dispatch::PSGITest;

use parent 'CGI::Snapp';
use strict;
use warnings;

use Hash::FieldHash ':all';

our $VERSION = '1.04';

# --------------------------------------------------

sub setup
{
	my($self) = @_;

	$self -> run_modes(start => sub{return 'Hello World'});

} # End of setup.

# --------------------------------------------------

1;
