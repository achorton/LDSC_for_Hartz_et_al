#! /bin/bash

time ../ldsc/ldsc.py --rg ../TAG_ever.sumstats.gz,../TAG_quit.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../TAGever_TAGquit
time ../ldsc/ldsc.py --rg ../TAG_ever.sumstats.gz,../TAG_aolog.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../TAGever_TAGaolog
time ../ldsc/ldsc.py --rg ../RTI.FTND_DXbipname.sumstats.gz,../TAG_ever.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../RTI.ftnddxbipnameTAGever
