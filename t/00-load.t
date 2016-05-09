#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Test::Warnings;

BEGIN {
    use_ok( 'App::Structurizer' );
}

diag( "Testing App::Structurizer $App::Structurizer::VERSION, Perl $], $^X" );
done_testing();
