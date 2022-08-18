#rtl_power -f 1731.6M:1731.6M:8k -g 42 -i 10
#########################################################################
##  Courtesy of Ahmad Rifky Idrus
##  Youtube Channel  Rifky The Cyber https://www.youtube.com/c/RifkyTheCyber





my $count = 0;

my $threshold = -8 ;


my  $stated = "1" ;



#514
#open CURL, "rtl_power -f 1710.6M:1710.7M:500k -g 42 -i 1|";

#91
#open CURL, "rtl_power -f 908.2M:908.3M:500k -g 42 -i 1|";

#96
open CURL, "rtl_power -f 909.2M:909.3M:500k -g 42 -i 1|";


##############  Lopping  streaming from here ############################

while ( $line = <CURL> ) {
@groupDb = split(",",$line);

print $groupDb[6] ;


if ($groupDb[6] > $threshold) {

print " trespassing threshold\n";
print "\a" ;


  sleep(1) ;



}
print "\n" ;



}




############### standard of all proceduress  ###################
