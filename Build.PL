use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'App::Structurizer',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/App/Structurizer.pm',
    requires          => {
        'perl'             => 5.008,
    },
    build_requires => {
        'Test::More'     => '0.88',
        'Test::Warnings' => '0.026',
    },
    add_to_cleanup     => [ 'App-Structurizer-*' ],
    create_license     => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/ivanwills/App-Structurizer.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=App::Structurizer',
        },
    },
);

$builder->create_build_script();
