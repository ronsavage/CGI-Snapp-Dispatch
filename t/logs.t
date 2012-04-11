use lib 't/lib';
use strict;
use warnings;

use CGI::Snapp::RunScript;

use Test::More;

# ------------------------------------------------
sub test_a
{
	my($runner, $script)  = @_;
	local $ENV{PATH_INFO} = '/';
	my($output)           = $runner -> run_script($script);

	chomp(@$output);

	my($expect) = <<EOS;
dispatch(...)
_merge_args(...)
_clean_path(/, ...)
Path info '/'
_parse_path(/, ...)
Original rule ':app'
Rule is now   '/:app/'
Rule is now   '/([^/]*)/'
Names in rule [app]
Trying to match '/' against rule ':app' using regexp '/([^/]*)/'
Original rule ':app/:rm'
Rule is now   '/:app/:rm/'
Rule is now   '/([^/]*)/([^/]*)/'
Names in rule [app, rm]
Trying to match '/' against rule ':app/:rm' using regexp '/([^/]*)/([^/]*)/'
Nothing matched
_http_error(..., 404)
Processing HTTP error 404
ok 1 - dispatch() returned something
ok 2 - dispatch() returned the expected HTML
1..2
EOS
	my(@expect) = split(/\n/, $expect);

	ok($#$output >= 0, "$script returned real data");

	is_deeply($output, \@expect, "$script returned the correct log content");

	return 2;

} # End of test_a.

# ------------------------------------------------

my($runner) = CGI::Snapp::RunScript -> new;
my($count)  = 0;

$count += test_a($runner, 't/log.a.pl');

done_testing($count);
