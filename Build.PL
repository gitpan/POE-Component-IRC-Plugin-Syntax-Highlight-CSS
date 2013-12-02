use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'POE::Component::IRC::Plugin::Syntax::Highlight::CSS',
    license             => 'perl',
    dist_author         => q|Zoffix <'zoffix@cpan.org'>|,
    dist_version_from   => 'lib/POE/Component/IRC/Plugin/Syntax/Highlight/CSS.pm',
    configure_requires => { 'Module::Build' => 0, },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'POE::Component::IRC::Plugin::BasePoCoWrap'     => 0.005,
        'POE::Component::Syntax::Highlight::CSS'        => 0.0202,
        'POE::Component::IRC::Plugin::OutputToPastebin' => 0.001,
        'perl' => '5.006',
    },
    add_to_cleanup      => [ 'POE-Component-IRC-Plugin-Syntax-Highlight-CSS-*' ],
    create_makefile_pl => 'traditional',
);
if ( $ENV{RELEASE_TESTING} ) {
    system('pod2text lib/POE/Component/IRC/Plugin/Syntax/Highlight/CSS.pm > README');
}

$builder->create_build_script();
