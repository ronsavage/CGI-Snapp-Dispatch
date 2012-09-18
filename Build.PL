use Module::Build;

Module::Build -> new
(
 module_name    => 'CGI::Snapp::Dispatch',
 license        => 'artistic',
 dist_abstract  => 'Dispatch requests to CGI::Snapp-based objects',
 dist_author    => 'Ron Savage <ron@savage.net.au>',
 build_requires =>
 {
 	 Test::More => 0.94,
 	 Test::Pod  => 1.44,
 },
 configure_requires =>
 {
 	 Module::Build => 0.3800,
 },
 requires =>
 {
	Capture::Tiny   => 0.16,
	Carp            => 1.20,
	CGI::Snapp      => 1.02,
	Class::Load     => 0.18,
	File::Spec      => 0.86,
	Hash::FieldHash => 0.10,
	HTTP::Exception => 0.04001,
	IO::Pipe        => 1.14,
	Log::Handler    => 0.75,
	parent          => 0.225,
	Proc::Fork      => 0.71,
	strict          => 1.03,
	Try::Tiny       => 0.11,
	warnings        => 1.03,
 },
) -> create_build_script();
