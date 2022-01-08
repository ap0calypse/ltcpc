#!/usr/bin/perl
{
    package ltcpcconf;
    use Exporter;
    our @ISA = ('Exporter');
    our @EXPORT = qw/%MINERS %CONFIG/;

    our %CONFIG = (
            'API_KEYS' => [
                'INSERT_API_KEY_HERE',      # account 1
                'SECOND_KEY_HERE',          # account 2
            ],
            'REFRESH' => 30,            # data refresh rate
            'PRICE_KWH' => 0.17,        # power costs (here: 17cts)
    );
    
    # workername -> power mappings
    our %M2W = (
            'account1.worker1'	=> 125,  # 125 Watts
            'account1.worker2'	=> 235,  # 235 Watts
            'account1.worker3'	=> 3100, # 3100 Watts

            'account2.worker1' => 800,	 # 800 Watts

    );
}
1;
