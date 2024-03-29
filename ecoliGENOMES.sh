BASEDIR="/home/bjc45276/ecoli"

# Ensembl version
curl -s ftp://ftp.ensemblgenomes.org/pub/bacteria/release-37/fasta/bacteria_0_collection/escherichia_coli_str_k_12_substr_mg1655/dna/Escherichia_coli_str_k_12_substr_mg1655.ASM584v2.dna.chromosome.Chromosome.fa.gz | gunzip -c > $BASEDIR/ecoli_MG1655_Ensembl.fa

# ENA version
wget -O $BASEDIR/ecoli_MG1655_ENA.fa "https://www.ebi.ac.uk/ena/data/view/U00096&display=fasta&download=fasta&filename=U00096.fasta"

# NCBI GenBank/Nucleotide version
wget -O $BASEDIR/ecoli_MG1655_ncbi_nucleotide.fa "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=NC_000913.2&rettype=fasta&retmode=txt"

# NCBI Assembly version| gunzip -c > ecoli_MG1655_Ensembl.fa
curl -s ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/005/845/GCA_000005845.2_ASM584v2/GCA_000005845.2_ASM584v2_genomic.fna.gz | gunzip -c > $BASEDIR/ecoli_MG1655_ncbi_assembly.fa

# NCBI Refseq version
curl -s ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz | gunzip -c > $BASEDIR/ecoli_MG1655_ncbi_refseq.fa
