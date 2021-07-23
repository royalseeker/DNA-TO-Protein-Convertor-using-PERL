# DNA-TO-Protein-Convertor-using-PERL
DNA TO Protein And Finding Electrically charged,Polar Uncharged and Special case From Amnio Acids with Percentages.
Amino acids are organic compounds that contain amine (NH2) and
carboxyl (COOH) functional groups, along with a side chain (R group) specific to each amino acid. About 500 naturally occurring amino acids are known (though only 20 appear in the genetic code) and can be classified in many ways. 
The amino acids that have electrically charged are Arginine (R) , Lysine (K),  Aspartic acid (D), Glutamic acid (E), Histidine (H).
The amino acids that have Uncharged  Polar are  Serine (S) ,Threonine (T) , Asparagine (N), Glutamine (Q). 
The amino acids that have Special Case are Cysteine (C ), Glycine (G) , Proline (P).

 A sub routine is created (codon2) and the amino acids are assigned according to 3 nucleotide.  An second Sub routine is created (dna2pep) to divide the inputed in to three Nucleotide. 
The DNA Sequence input is taken which is stored in ($dna) the DNA sequence is then transliteration to an RNA Sequence the transcripted sequence is then printed.
The RNA sequence is then sent to the sub routine (dna2pep) which divides it. Follow by the next sub routine (codon2) the protein is then saved into $peptide and printed. The matching of Electrically Charged, Polar Uncharged and Special Case Amino Acids takes place in the foreach statement which displays the protein
The regular expression transliterate is used to get the numbers  of Electrically charged, Polar Uncharged and Special case from Amnio Acids ($protein).
The Percentage is Found using  total 100 * (EC,PU,SC values)/(length($protein)).
