requires 'IPC::System::Simple';
requires 'Pithub';
requires 'Sys::Hostname';
requires 'Term::ReadKey';
requires 'autodie';
requires 'parent';
requires 'Term::ANSIColor';
requires 'Encode';
requires 'Encode::Locale';
requires 'Getopt::Long';
requires 'HTTP::Request';
requires 'JSON';
requires 'LWP::UserAgent';
requires 'Pod::Usage';

on configure => sub {
    requires 'Module::Build::Tiny';
};

on build => sub {
    requires 'Test::More', '0.98';
    requires 'Test::Requires';
};
