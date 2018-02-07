library(DECIPHER)

##NOTE:  DECIPHER yields improved accuracy over other alignment programs including MAFFT, MUSCLE, Clustal Omega, PROMALS, and PASTA on large sets of input sequences. 

fasta_data <- "C://path//to//filename.fasta"
fasta_data
unaligned_seqs <- readDNAStringSet(fasta_data)
unaligned_seqs

##Conversion to AA and Alignment:

amino_align <- AlignTranslation(unaligned_seqs, type="AAStringSet") # align the translation
BrowseSeqs(amino_align, highlight=1) #view alignment
DNA_alignment<- AlignSeqs(unaligned_seqs) #align sequences AA without translation
BrowseSeqs(DNA_alignment, highlight=1) #view alignment
DNA_reverse <- AlignTranslation(unaligned_seqs) # align the translation then reverse translate
BrowseSeqs(DNA_reverse, highlight=1) #view alignment
#write aligned sequences to FASTA file:
#writeXStringSet(amino_align, file="C://")
