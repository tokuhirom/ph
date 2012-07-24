use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
    license              => 'perl',
    dynamic_config       => 0,

    build_requires       => {
        'Test::More' => '0.98',
        'Test::Requires' => 0,
    },
    configure_requires   => { 'Module::Build' => '0.38' },
    requires             => {
        'parent'                        => '0',
        'autodie' => 0,
        'IPC::System::Simple' => 0,
        'Pithub' => 0,
        'Term::ReadKey' => 0,
    },

    no_index    => { 'directory' => [ 'inc' ] },
    name        => 'App-ph',
    module_name => 'App::ph',

    script_files => ['bin/ph'],

    test_files => (-d '.git' || $ENV{RELEASE_TESTING}) ? 't/ xt/' : 't/',
    recursive_test_files => 1,
   
    create_readme  => 1,
    create_license => 1,
);
$build->create_build_script();
