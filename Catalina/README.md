# macOS Catalina installable_condition

Original conditional work by Hannes Juutilainen: https://github.com/hjuutilainen/adminscripts/blob/master/check-10.15-catalina-compatibility.py

Original bash version by Ben Mason for BestMacs for use with Gruntwork.

Modified version for 10.13 by Stephen Boyle: https://github.com/sphen13/munki-scripts/tree/master/pkgsinfo

Calculated minimum bytes with: https://www.matisse.net/bitcalc/?input_amount=4&input_units=gigabytes&notation=legacy

To convert `catalina_installcheck_script.sh` for use with Munki, use the following:

	/usr/local/munki/makepkginfo --installcheck_script=/path/to/catalina_installcheck_script.sh

`catalina_installable_condition` is ready to drop into an installable_condition string as is.