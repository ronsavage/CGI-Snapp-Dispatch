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
 PL_FILES  => {},
 PREREQ_PM =>
 {
	Carp            => 1.20,
	CGI::PSGI       => 0.15,
	CGI::Snapp      => 1.01,
	Class::Load     => 0.18,
	File::Spec      => 0.86,
	Hash::FieldHash => 0.10,
	HTTP::Exception => 0.04001,
	Log::Handler    => 0.75,
	parent          => 0.225,
	strict          => 1.03,
	Test::More      => 0.94,
	Test::Pod       => 1.44,
	Try::Tiny       => 0.11,
	warnings        => 1.03,
 },
 VERSION_FROM => 'lib/CGI/Snapp/Dispatch.pm',
);
