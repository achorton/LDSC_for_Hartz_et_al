#! /bin/bash

time ../ldsc/ldsc.py --rg ../TAG_CPD.sumstats.gz,../TAG_ever.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../TAGCPD_TAGever
time ../ldsc/ldsc.py --rg ../TAG_CPD.sumstats.gz,../TAG_quit.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../TAGCPD_TAGquit
time ../ldsc/ldsc.py --rg ../TAG_CPD.sumstats.gz,../TAG_aolog.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../TAGCPD_TAGaolog
time ../ldsc/ldsc.py --rg ../RTI.FTND_DXbipname.sumstats.gz,../TAG_CPD.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../RTI.ftnddxbipnameTAGCPD
