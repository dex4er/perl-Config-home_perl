package Config::home_perl;

require Config;

sub import {
    my $obj = tied %Config::Config;
    $obj->{$_} = $ENV{HOME} . '/perl/lib' foreach qw(
        installarchlib
        installprivlib  installsitelib  installvendorlib
        installprivarch installsitearch installvendorarch
    );
    $obj->{$_} = $ENV{HOME} . '/perl/bin' foreach qw(
        installprivbin    installsitebin    installvendorbin    installbin
        installprivscript installsitescript installvendorscript installscript
    );
    $obj->{$_} = $ENV{HOME} . '/perl/man/man1' foreach qw(
        installman1dir installsiteman1dir
    );
    $obj->{$_} = $ENV{HOME} . '/perl/man/man3' foreach qw(
        installman3dir installsiteman3dir
    );
}

1;
