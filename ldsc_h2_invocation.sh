#! /bin/bash

time ../ldsc/ldsc.py --h2 ../scz.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../scz_h2_self
time ../ldsc/ldsc.py --h2 ../bip.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../bip_h2_self
time ../ldsc/ldsc.py --h2 ../TAG_CPD.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../TAGCPD_h2_self
time ../ldsc/ldsc.py --h2 ../TAG_ever.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../TAGever_h2_self
time ../ldsc/ldsc.py --h2 ../TAG_quit.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../TAGquit_h2_self
time ../ldsc/ldsc.py --h2 ../TAG_aolog.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../TAGaolog_h2_self
time ../ldsc/ldsc.py --h2 ../RTI.FTND_DXbipname.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../RTI.FTND_DXbipname_h2_self
