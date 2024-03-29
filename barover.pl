use warnings;
use strict;
use Data::Dumper;
use XML::RSS::Parser::Lite;
use LWP::Simple;

# Getting current version for making a container
my $xml = get("https://store.steampowered.com/feeds/news/app/602960/?cc=US&l=english");
my $rp = new XML::RSS::Parser::Lite;
$rp->parse($xml);

for(0..10) {
    my $description = $rp->get($_)->get('description');
    if ($description =~ m/i&gt;(v.+)&lt;\/i&gt;/g) {
        print ($1."\n");
        last;
    }

}