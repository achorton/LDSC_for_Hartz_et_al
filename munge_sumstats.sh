#! /bin/bash

time ../ldsc/munge_sumstats.py --sumstats ../downloads_for_SCORE/pgc.scz2.full.b37.bipname.txt --N 74626 --merge-alleles ../downloads_for_SCORE/bip.snplist --out ../scz
time ../ldsc/munge_sumstats.py --sumstats ../downloads_for_SCORE/pgc.bip.full.2012-04.b37.txt --N 16731 --merge-alleles ../downloads_for_SCORE/bip.snplist --out ../bip
time ../ldsc/munge_sumstats.py --sumstats ../downloads_for_SCORE/tag.cpd.b37.2 --N 38860 --merge-alleles ../downloads_for_SCORE/TAG.snplist --out ../TAG_CPD
time ../ldsc/munge_sumstats.py --sumstats ../downloads_for_SCORE/tag.ever.b37.2 --N 74035 --merge-alleles ../downloads_for_SCORE/TAG.snplist --out ../TAG_ever
time ../ldsc/munge_sumstats.py --sumstats ../downloads_for_SCORE/tag.quit.b37.2 --N 40562 --merge-alleles ../downloads_for_SCORE/TAG.snplist --out ../TAG_quit
time ../ldsc/munge_sumstats.py --sumstats ../downloads_for_SCORE/tag.aolog.b37.2 --N 28647 --merge-alleles ../downloads_for_SCORE/TAG.snplist --out ../TAG_aolog
time ../ldsc/munge_sumstats.py --sumstats ../downloads_for_SCORE/RTI.eur.1df.for.ldsc.bipname.txt --N 11498 --merge-alleles ../downloads_for_SCORE/bip.scz.snplist --out ../RTI.FTND_DXbipname

