#!/usr/bin/env/perl -w

use strict;


my %in;
my %antiin;

my @infiles=( "pgc.bip.full.2012-04.b37.txt" );

for my $infile (@infiles) {
    open(IN,"<",$infile) || die "Cannot open infile $infile :$!\n";
    <IN>;
    while (my $line=<IN>) {
	chomp $line;
	my @line=split("\t",$line);
	my $snp=shift @line;
	my $chr=shift @line;
	my $BP=shift @line;
	my $A1=shift @line;
	my $A2=shift @line;
	shift @line;
	shift @line;
	shift @line;
	shift @line;
	shift @line;
	my $maf=shift @line;
	$antiin{$snp}= { "A1" => $A1,
			 "A2" => $A2,
			 "maf" => $maf,
			 "pos" => $BP
	}; 
	if ($snp=~m/^rs/) {
	    $in{$BP}{$snp}= { "A1" => $A1,
			      "maf" => $maf,
			      "A2" => $A2
	    }; 
	} elsif ($snp=~m/chr${chr}/) {
	    my @pos=split("_", $snp);
	    my $indel=$pos[2];
	    if (exists $pos[2]) {
		$in{$BP}{$indel}= { "A1" => $A1,
				    "maf" => $maf,
				    "A2" => $A2
		}; 
	    } else {
		$in{$BP}{"SNP"}= { "A1" => $A1,
				   "maf" => $maf,
				   "A2" => $A2
		}; 
	    }
	} else {
	    $in{$BP}{"MERGED_DEL"}= { "A1" => $A1,
				      "maf" => $maf,
				      "A2" => $A2
	    }; 
	}
    }
    close IN;
}


@infiles=( "tag.cpd.b37.2","tag.ever.b37.2","tag.quit.b37.2","tag.aolog.b37.2","pgc.scz2.full.b37.txt" );

for my $infile (@infiles) {
    open(IN,"<",$infile) || die "Cannot open infile $infile :$!\n";
    my $outfile=$infile;
    $outfile=~s/$/\.bipname\.txt/;
    print $outfile,"\n";

    open(OUT,">",$outfile) || die "Cannot open outfile $outfile :$!\n";
    my $header="SNP\tCHR\tBP\tA1\tA2\tor\tSE\tP\tinfo\tMAF";

    print OUT "$header\n";
    <IN>;
    while (my $line=<IN>) {
	chomp $line;
	my @line=split("\t",$line);

	my $id=shift @line;
	my $chr=shift @line;
	my $pos=shift @line;
	my $A1=shift @line;
	my $A2=shift @line;
	my $or=shift @line;
	my $se=shift @line;
	my $P=shift @line;
	my $info=shift @line;
	my $maf=shift @line;

	my @rest_of_line=( $or,$se,$P,$info,$maf ); 

	my $string=join("\t", @rest_of_line );
	if (exists $antiin{$id}) {
	    if ($infile=~m/pgc/) {
		print OUT "${id}\tchr${chr}\t$pos\t$A1\t$A2\t$or\t$se\t$P\t$info\t$antiin{$id}{\"maf\"}\n";
	    } else { 	    
		print OUT "${id}\tchr${chr}\t$pos\t$A1\t$A2\t$string\n";
	    }
	} elsif (exists $in{$pos}) {
	  BBLOCK: for (keys $in{$pos}) {
	      if (length($A1) == 1 &&
		  length($A2) == 1 &&
		  ((flipper($in{$pos}{$_}{"A1"}) eq $A1 &&
		    flipper($in{$pos}{$_}{"A2"}) eq $A2) ||
		   (flipper($in{$pos}{$_}{"A1"}) eq $A2 &&
		    flipper($in{$pos}{$_}{"A2"}) eq $A1))) {
		  if ($infile=~m/pgc/) {
		      print OUT "$_\tchr${chr}\t$pos\t$A1\t$A2\t$or\t$se\t$P\t$info\t$in{$pos}{$_}{\"maf\"}\n";
		  } else {
		      print OUT "$_\tchr${chr}\t$pos\t$A1\t$A2\t$string\n";
		  }
		  last BBLOCK;
	      }
	      elsif (($in{$pos}{$_}{"A1"} eq $A1 &&
		      $in{$pos}{$_}{"A2"} eq $A2) || 
		     ($in{$pos}{$_}{"A1"} eq $A2 &&
		      $in{$pos}{$_}{"A2"} eq $A1)) {
		  if ($infile=~m/pgc/) {
		      print OUT "$_\tchr${chr}\t$pos\t$A1\t$A2\t$or\t$se\t$P\t$info\t$in{$pos}{$_}{\"maf\"}\n";
		  } else {
		      print OUT "$_\tchr${chr}\t$pos\t$A1\t$A2\t$string\n";
		  }
		  last BBLOCK;
	      }
	      elsif (exists $in{$pos}{$_} && (length($A1) > 1)) {
		  my @s1 = split(//, $A1);
		  my @s2 = split(//, $A2);
		  my $o1="";
		  my $o2="";
		  my $eq_state = 1;
		  while (@s1 and @s2) {
		      if (($s1[0] eq $s2[0]) != $eq_state) {
			  $o1.=shift @s1;
			  $o2.=shift @s2;
		      } else {
			  shift @s1;
			  shift @s2;
		      }
		  }

		  if ((length($o1) == 1 &&
		       length($o2) == 1 &&
		       (($o1 eq flipper($in{$pos}{$_}{"A1"})  && 
			 $o2 eq flipper($in{$pos}{$_}{"A2"})) ||
			($o1 eq flipper($in{$pos}{$_}{"A2"})  && 
			 $o2 eq flipper($in{$pos}{$_}{"A1"})))) ||
		      ($o1 eq $in{$pos}{$_}{"A1"}  && 
		       $o2 eq $in{$pos}{$_}{"A2"}) ||
		      ($o1 eq $in{$pos}{$_}{"A2"}  && 
		       $o2 eq $in{$pos}{$_}{"A1"})) {
		      if ($infile=~m/pgc/) {
			  print OUT "$_\tchr${chr}\t$pos\t$A1\t$A2\t$or\t$se\t$P\t$info\t$in{$pos}{$_}{\"maf\"}\n";
		      } else {
			  print OUT "$_\tchr${chr}\t$pos\t$A1\t$A2\t$string\n";
		      }
		  }
	      }
	  }
	}
    }
    close OUT;
    close IN;
}


exit;

sub flipper {
    my $base=shift;

    if ($base eq 'A') { return 'T'; }
    elsif ($base eq 'T') { return 'A'; }
    elsif ($base eq 'C') { return 'G'; }
    elsif ($base eq 'G') { return 'C'; }
}

