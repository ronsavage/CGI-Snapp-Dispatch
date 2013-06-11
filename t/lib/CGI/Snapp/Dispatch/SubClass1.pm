package CGI::Snapp::Dispatch::SubClass1;

use parent 'CGI::Snapp::Dispatch';
use strict;
use warnings;

use Hash::FieldHash ':all';

our $VERSION = '1.03';

# --------------------------------------------------

sub dispatch_args
{
	my($self, $args) = @_;

	return
	{
		args_to_new => {PARAMS => {one => 'sub-one'}, user => 'zoe'},
		default     => '',
		prefix      => __PACKAGE__,
		table       =>
		[
			''              => {app => 'Initialize', rm => 'display'},
			':app'          => {rm => 'report'},
			':app/:rm/:id?' => {},
		],
	};

} # End of dispatch_args.

# --------------------------------------------------

1;
