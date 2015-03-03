use strict;
use warnings;

use Module::Build;

Module::Build -> new
(
	module_name    => 'CGI::Snapp::Dispatch',
	license        => 'artistic_2',
	dist_abstract  => 'Dispatch requests to CGI::Snapp-based objects',
	dist_author    => 'Ron Savage <ron@savage.net.au>',
	build_requires =>
	{
		'Test::Deep' => 0.110,
		'Test::More' => 1.001014,
		'Test::Pod' => 1.48,
	},
	configure_requires =>
	{
		'Module::Build' => 0.4211,
	},
	requires =>
	{
		'Capture::Tiny' => 0.16,
		'Carp' => 1.20,
		'CGI::Snapp' => 1.04,
		'Class::Load' => 0.18,
		'File::Spec' => 0.86,
		'Hash::FieldHash' => 0.10,
		'HTTP::Exception' => 0.04001,
		'IO::Pipe' => 1.14,
		'Log::Handler' => 0.75,
		'lib' => 0,
		'parent' => 0.225,
		'Proc::Fork' => 0.71,
		'strict' => 1.03,
		'Try::Tiny' => 0.11,
		'warnings' => 1.03,
		},
) -> create_build_script();
