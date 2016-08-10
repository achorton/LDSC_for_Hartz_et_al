#! /bin/bash

time ../ldsc/ldsc.py --rg ../scz.sumstats.gz,../scz.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../self_scz
time ../ldsc/ldsc.py --rg ../bip.sumstats.gz,../bip.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../self_bip
time ../ldsc/ldsc.py --rg ../TAG_CPD.sumstats.gz,../TAG_CPD.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../self_TAG_CPD
time ../ldsc/ldsc.py --rg ../TAG_ever.sumstats.gz,../TAG_ever.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../self_TAG_ever
time ../ldsc/ldsc.py --rg ../TAG_quit.sumstats.gz,../TAG_quit.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../self_TAG_quit
time ../ldsc/ldsc.py --rg ../TAG_aolog.sumstats.gz,../TAG_aolog.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../self_TAG_aolog
time ../ldsc/ldsc.py --rg ../RTI.FTND_DXbipname.sumstats.gz,../RTI.FTND_DXbipname.sumstats.gz --ref-ld-chr ../eur_w_ld_chr/ --w-ld-chr ../eur_w_ld_chr/ --out ../self_RTI.FTND_DXbipname_rg
