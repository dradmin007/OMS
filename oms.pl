#!/usr/bin/perl

use strict;
use warnings;

use FindBin;
use File::Spec;
use lib File::Spec->catdir($FindBin::Bin, '.', 'lib');


use OMS 0.01;

# get env NLS_LANG
my $old_nls = $ENV{"NLS_LANG"};
$ENV{"NLS_LANG"} = "american_america.ru8pc866";

my $o = OMS->new( {'year' => "2015", 'month' => "02"} );
my $res = 0;
#$o->createDBF("2014","12", "OMS");
#$o->connect_to_oracle("2014","12", "OMS");
#$o->export_to_dbf("2014","12", "SSP4708");
#print $o->get_cmd_for_brsp("2014","12")

$res = $o->export_to_dbf("STREETS");
#$res = $o->export_to_dbf("SEGMENTS");
#$res = $o->export_to_dbf("RES_SP");
#$res = $o->export_to_dbf("STASMP");
#$res = $o->export_to_dbf("BRSP");
#
#$res = $o->export_to_dbf("SSP4708");

print "Done!\n" if $res == 1;

# return NLS_LANG to default
$ENV{"NLS_LANG"} = $old_nls;
