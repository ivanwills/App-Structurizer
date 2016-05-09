#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Test::Warnings;

my $module = 'App::Structurizer';
use_ok( $module );

simple();
nested();

done_testing();

sub simple {
    my $str = $module->new;

    is $str->structure({key1 => 'value1'}),
        "key1\n",
        "Single key shown";

    is $str->structure({key1 => 'value1', key2 => 1}),
        "key1\nkey2\n",
        "Two keys shown";
}

sub nested {
    my $str = $module->new;

    is $str->structure({key1 => { subkey => 'value' }}),
        "key1\n+ subkey\n",
        "key/subkey shown";
}
