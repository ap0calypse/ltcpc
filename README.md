ltcpc - a litecoinpool.org CUI
------------------------------
![screenshot ltcpc](screenshot.png "Screenshot")


To work, ltcpc depends on some Perl Modules. Here is a list of modules used and the corresponding
packages for various distributions:

 - Curses::UI       (arch: perl-curses-ui, debian: libcurses-ui-perl)
 - JSON             (arch: perl-json, debian: libjson-perl)
 - LWP::UserAgent   (arch: perl-libwww, debian: libwww-perl)

This script shows mining stats along with the profit ratios and power usage. To accomplish this,
it needs proper configuration.

In order to use this script, copy the sample config to conf/ltcpcconf.pm and adapt to your needs.
A minimal configuration would look like this:
~~~
#!/usr/bin/perl
{
    package ltcpcconf;
    use Exporter;
    our @ISA = ('Exporter');
    our @EXPORT = qw/%M2W %CONFIG/;

    our %CONFIG = (
            'API_KEYS' => [
                'INSERT_API_KEY_HERE',  # account 1
                'SECOND_KEY_HERE',      # account 2
            ],
            'REFRESH' => 30,            # data refresh rate
            'PRICE_KWH' => 0.17,        # power costs (here: 17cts)
    );

    # workername -> power mappings
    
    our %M2W = (
            'account1.worker1'	=> 125,     # 125 Watts
            'account1.worker2'	=> 235,     # 235 Watts
            'account1.worker3'	=> 3100,    # 3100 Watts

            'account2.worker1' => 800,      # 800 Watts
    );
}
1;
~~~
Donations are welcome :)

- LTC - LcWms1wddhRKWyE7JDSxZcY6gZTGTAttXG
- BTC - bc1qkggktuhhdms2ue6c04archpvc6h4pqfeu25y3h
- DOGE - DRpqNpcfAidAFmkLzaLoB6gVrRgKzNtiRC
