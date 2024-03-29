# LDSC_for_Hartz_et_al
Scripts for data preparation and analysis of genetic correlation of nicotine and other phenotypes using LDSC Python scripts from https://github.com/bulik/ldsc


###Files contained:

munge_sumstats.sh   /* bash commands for preparing *.sumstats.gz using ldsc Python tools */


ldsc_scz2_invocation.sh   /* bash script for determining genetic correlation of PGC_SCZ2 to other phenotypes using --rg option of ldsc.py */

ldsc_bip_invocation.sh   /* bash script for determining genetic correlation of PGC_bipolar to other phenotypes using --rg option of ldsc.py */

ldsc_CPD_invocation.sh   /* bash script for determining genetic correlation of TAG_CPD to other phenotypes using --rg option of ldsc.py */

ldsc_ever_invocation.sh   /* bash script for determining genetic correlation of TAG_ever to other phenotypes using --rg option of ldsc.py */

ldsc_quit_invocation.sh   /* bash script for determining genetic correlation of TAG_quit to other phenotypes using --rg option of ldsc.py */

ldsc_ageonset_invocation.sh   /* bash script for determining genetic correlation of TAG_log(age_onset) to other phenotypes using --rg option of ldsc.py */


ldsc_h2_invocation.sh   /* bash script for determining heritability using --h2 option of ldsc.py */

ldsc_rg_heritability_invocation.sh   /* bash script for determining heritability using --rg option of ldsc.py */



snplist_convert.RTI.pl   /* Perl script for harmonizing variant naming and alleles for RTI meta-analysis to PGC bipolar results */

snplist_convert.TAGelse.pl   /* Perl script for harmonizing variant naming and alleles for TAG meta-analyses to PGC bipolar results */

snplist_convert.scz2.pl   /* Perl script for harmonizing variant naming and alleles for PGC SCZ2 results to PGC bipolar results */


LDRegression_log_160809.xlsx  /* Tables of h^2 and genetic correlation for phenotypes examined */


###Links to published GWAS files may be found at the PGC website (may require reformatting): https://www.med.unc.edu/pgc/results-and-downloads 

> pgc.bip.2012-04.zip

> ckqny.scz2snpres.gz

> tag.cpd.tbl.gz

> tag.evrsmk.tbl.gz

> tag.former.tbl.gz

> tag.logonset.tbl.gz

