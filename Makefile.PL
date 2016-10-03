use strict;
use warnings;

use ExtUtils::MakeMaker;

# ----------------

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my(%params) =
(
	($] ge '5.005') ?
	(
		AUTHOR   => 'Ron Savage (ron@savage.net.au)',
		ABSTRACT => 'Dispatch requests to CGI::Snapp-based objects',
	) : (),
	clean =>
	{
		FILES => 'blib/* Makefile MANIFEST CGI-Snapp-Dispatch*'
	},
	dist =>
	{
		COMPRESS => 'gzip',
		SUFFIX   => 'gz'
	},
	DISTNAME  => 'CGI-Snapp-Dispatch',
	NAME      => 'CGI::Snapp::Dispatch',
	PL_FILES  => {},
	PREREQ_PM =>
	{
		'Capture::Tiny' => 0.16,
		'Carp' => 1.20,
		'CGI::Snapp' => 1.04,
		'Class::Load' => 0.18,
		'File::Spec' => 0.86,
		'Hash::FieldHash' => 0.10,
		'HTTP::Exception' => 0.04001,
		'IO::Pipe' => 1.14,
		'lib' => 0,
		'Log::Handler' => 0.75,
		'parent' => 0.225,
		'Proc::Fork' => 0.71,
		'strict' => 1.03,
		'Try::Tiny' => 0.11,
		'warnings' => 1.03,
	},
	TEST_REQUIRES =>
	{
		'Test::Deep' => 0.120,
		'Test::More' => 1.302052,
		'Test::Pod' => 1.48,
	},
	VERSION_FROM => 'lib/CGI/Snapp/Dispatch.pm',
);

if ( ($ExtUtils::MakeMaker::VERSION =~ /^\d\.\d\d$/) && ($ExtUtils::MakeMaker::VERSION > 6.30) )
{
	$params{LICENSE} = 'perl';
}

if ($ExtUtils::MakeMaker::VERSION ge '6.46')
{
	$params{META_MERGE} =
	{
		'meta-spec' =>
		{
			version => 2,
		},
		resources   =>
		{
			bugtracker	=> 'https://rt.cpan.org/Public/Dist/Display.html?Name=CGI-Snapp-Dispatch',
			license		=> 'http://dev.perl.org/licenses/',
			repository	=>
			{
				type	=> 'git',
				url		=> 'https://github.com/ronsavage/CGI-Snapp-Dispatch.git',
				web		=> 'https://github.com/ronsavage/CGI-Snapp-Dispatch',
			},
		},
	};
}

WriteMakefile(%params);
