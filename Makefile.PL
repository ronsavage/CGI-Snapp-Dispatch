use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
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
	LICENSE   => 'artistic_2',
 PL_FILES  => {},
 PREREQ_PM =>
 {
	Capture::Tiny   => 0.16,
	Carp            => 1.20,
	CGI::Snapp      => 1.03,
	Class::Load     => 0.18,
	File::Spec      => 0.86,
	Hash::FieldHash => 0.10,
	HTTP::Exception => 0.04001,
	IO::Pipe        => 1.14,
	Log::Handler    => 0.75,
	parent          => 0.225,
	Proc::Fork      => 0.71,
	strict          => 1.03,
	Test::Simple    => 0.94,
	Test::Pod       => 1.45,
	Try::Tiny       => 0.11,
	warnings        => 1.03,
 },
 VERSION_FROM => 'lib/CGI/Snapp/Dispatch.pm',
);
