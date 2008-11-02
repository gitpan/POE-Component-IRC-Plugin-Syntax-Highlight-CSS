#!/usr/bin/env perl

use Test::More tests => 3;

BEGIN {
    use_ok('POE::Component::IRC::Plugin::BasePoCoWrap');
    use_ok('POE::Component::Syntax::Highlight::CSS');
	use_ok( 'POE::Component::IRC::Plugin::Syntax::Highlight::CSS' );
}

diag( "Testing POE::Component::IRC::Plugin::Syntax::Highlight::CSS $POE::Component::IRC::Plugin::Syntax::Highlight::CSS::VERSION, Perl $], $^X" );
