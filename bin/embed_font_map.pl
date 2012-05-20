# Produce pdf's with fully embedded fonts (not subset embedded)
# See http://tex.stackexchange.com/questions/24002/turning-off-font-subsetting-in-pdftex
# use as: perl embed_font_map.pl < book.log > fullembed.map
# and in the file put \pdfmapfile{=fullembed.map} before the \begin{document}
# Author: Ben Crowell
 
use strict;

my $default_map = `kpsewhich pdftex.map`;
open(F,"<$default_map");
my @map = ();
while (my $line=<F>) {
  chomp $line;
  # yvtri8r VenturisADF-Italic <8r.enc <yvtri8a.pfb "TeXBase1Encoding ReEncodeFont"
  # "..." may also be before <'s; just eliminate it:
  $line =~ s/".*"//;
  #print "=$line=\n";
  push @map,$line;

}
close(F);

local $/; # slurp whole file

my $log = <>;

#print "encs:\n";
my @enc = (''); # null string is because some lines in pdftex.map have no .enc
while ($log =~ /{([^}]+\.enc)}/g) {
  my $enc = $1;
  $enc =~ s/\n//g;
  if ($enc =~ /([^\/]+)\.enc/) {
    my $tail = $1;
    #print "enc=$tail\n";
    push @enc,$tail;
  }
}

#print "pfbs:\n";
my @pfb = ();
while ($log =~ /<([^>]+\.pfb)>/g) {
  my $pfb = $1;
  $pfb =~ s/\n//g;
  if ($pfb =~ /([^\/]+\.pfb)/) {
    my $tail = $1;
    #print "$tail\n";
    push @pfb,$tail;
  }

}

foreach my $enc(@enc) {
  my $e = quotemeta $enc;
  foreach my $pfb(@pfb) {
    my $p = quotemeta $pfb;
    foreach my $map(@map) {
      #if ($pfb =~ /tipasl10/ && $enc eq '') {print "trying enc=$enc, pfb=$pfb, map=$map\n"}
      if ( $map =~/$p/ && (($enc ne '' && $map =~ /$e/) || ($enc eq '' && ! ($map =~ /\.enc/)))) {
        $map =~ s/(<[^ ]+.pfb)/<$1/;
        #print "enc=$enc, pfb=$pfb, map=$map\n";
        print "$map\n";
      }
    }
  }
}
