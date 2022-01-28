library(BSgenome)
library(optparse)
library(rtracklayer)

parser <- OptionParser()
parser <- add_option(parser,'--fasta',action='store',default="HT.Ref.fasta")
parser <- add_option(parser,'--dir',action='store',default="HT_KY")
opts <- parse_args(parser)

tbit <- paste0(opts$dir,'/',sub('fasta','2bit',opts$fasta))
ky <- readDNAStringSet(opts$fasta)
export.2bit(ky,tbit)
forgeBSgenomeDataPkg("DESCRIPTION")
