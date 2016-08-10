#! /bin/bash

time ../ldsc/ldsc.py --rg ../scz.sumstats.gz,../bip.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../scz_bip
time ../ldsc/ldsc.py --rg ../scz.sumstats.gz,../TAG_CPD.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../scz2_TAGCPD
time ../ldsc/ldsc.py --rg ../scz.sumstats.gz,../TAG_ever.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../scz2_TAGever
time ../ldsc/ldsc.py --rg ../scz.sumstats.gz,../TAG_quit.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../scz2_TAGquit
time ../ldsc/ldsc.py --rg ../scz.sumstats.gz,../TAG_aolog.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../scz2_TAGaolog
time ../ldsc/ldsc.py --rg ../RTI.FTND_DXbipname.sumstats.gz,../scz.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../RTI.ftnddxbipnamescz
