sub codon2 {
    my  $codon= $_[0];
    $codon = uc $codon;
     my(%genetic_code) = (
  'UCA' => 'S', 'UCC' => 'S', 'UCG' => 'S', 'UCU' => 'S', 'UUC' => 'F', 
  'UUU' => 'F',  'UUA' => 'L', 'UUG' => 'L', 'UAC' => 'Y', 'UAU' => 'Y', 
  'UAA' => '_',  'UAG' => '_', 'UGC' => 'C',  'UGU' => 'C', 'UGA' => '_', 
  'UGG' => 'W', 'CUA' => 'L',  'CUC' => 'L',  'CUG' => 'L',   'CUU' => 'L', 
  'CCA' => 'P',   'CAU' => 'H',  'CAA' => 'Q',  'CAG' => 'Q',  'CGA' => 'R', 
  'CGC' => 'R',  'CGG' => 'R',   'CGU' => 'R',   'AUA' => 'I',   'AUC' => 'I', 
  'AUU' => 'I',   'AUG' => 'M',   'ACA' => 'T',   'ACC' => 'T',  'AAG' => 'K', 
  'ACG' => 'T',   'ACU' => 'T',   'AAC' => 'N',   'AAU' => 'N',   'AAA' => 'K', 
   'AGC' => 'S',   'AGU' => 'S',   'AGA' => 'R',   'AGG' => 'R',   'CCC' => 'P', 
  'CCG' => 'P',   'CCU' => 'P',   'CAC' => 'H',   'GUA' => 'V',   'GUC' => 'V', 
  'GUG' => 'V',   'GUU' => 'V',   'GCA' => 'A',  'GCC' => 'A',   'GCG' => 'A', 
  'GCU' => 'A',   'GAC' => 'D',   'GAU' => 'D',   'GAA' => 'E',   'GAG' => 'E', 
  'GGA' => 'G',   'GGC' => 'G',  'GGG' => 'G',   'GGU' => 'G'      );
                                                                                                                                            
    if(exists $genetic_code{$codon}) {
        return $genetic_code{$codon};  }
else{
 print STDERR "Bad codon \"$codon\"!!\n";
            exit;}
}
sub dna2pep {
     my $dna = $_[0];
     my $protein = '';                                                                                                                                         
for(my $i=0; $i < (length($dna) - 2) ; $i += 3) {
$protein =  $protein .codon2(substr($dna,$i,3) );
}
      return $protein;
}


print "\n\t!!!!!!DNA TO PRotien And Finding Electrically charged,Polar \n        Uncharged and Special case From Amnio Acids with Percentages!!!!!!\n";
print "\nInput the DNA Seq \n";
$dna = <>;
print "\n\t****TRANSCRIPTION DNA TO RNA****\n";
$dna =~ tr/ATGC/UAGC/;
print "\n RNA seq : $dna \n";
print "\t****TRANSLATION RNA TO PROTEIN****\n";
$peptide = dna2pep($dna);
print "\nProtein Seq: \n$peptide\n";
print "\n\t****QUERYING THE AMINO ACID****\n";
print "\n Matching the Electrically charged AA With (R,H,K,D,E)\n";
print "\n Matching the Polar Uncharged AA With (S,T,N,Q)\n";
print "\n Matching the  Special case AA With (C,G,P)\n";
print "\n\t****PROCESSING****\n";
my ($r,@rip,$rr);
$r= $peptide;
chomp ($r);
@rip = split(//,$r);
print "\nThe Electrically charged,Polar Uncharged,Special Case Amino Acids: \n";
foreach $rr (@rip)
{
         chomp ($rr);
         if ( $rr ne 'R' && $rr ne 'H' && $rr ne 'K' && $rr ne 'D' && $rr ne 'E' && $rr ne 'S' && $rr ne 'T' && $rr ne 'N' && $rr ne 'Q' && $rr ne 'C'&&  $rr ne 'G' && $rr ne 'P' ){
                $rr  = "---";
            }
        print "$rr";
}
print "\n";                                                                                                                                                                                           
$protein = $peptide;
$e = ($protein =~ tr/RHKDE//);
print"\nThe number of Electrically Charged Amino Acid is: $e\n";
$percentagee = 100 * ($e / length($protein));
print "\nThe percentage of Electrically Charged Amino Acid is: \% $percentagee\n";
$protein = $peptide;
$p = ($protein =~ tr/STNQ//);
print"\nThe number of Polar Uncharged Amino Acid is: $p\n";
$percentagep = 100 * ($p / length($protein));
print "\nThe percentage of Polar Uncharged Amino Acid is: \% $percentagep\n";
$protein = $peptide;
$s = ($protein =~ tr/CUGP//);
print"\nThe number of Special case Amino Acid is: $s\n";
$percentages = 100 * ($s / length($protein));
print "\nThe percentage of Special case Amino Acid  is: \% $percentages\n";
