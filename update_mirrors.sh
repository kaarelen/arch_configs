declare country_code=$(grep -E "Europe/Amsterdam\$" /usr/share/zoneinfo/zone.tab | cut -f 1)
declare full_country_name=$(grep ^$country_code /usr/share/zoneinfo/iso3166.tab | cut -f 2)
echo $country_code
echo $full_country_name

if [[ -n $full_country_name ]];
then
	reflector --country $full_country_name --sort score --download-timeout 1 --fastest 5 > /etc/pacman.d/mirrorlist
else
	echo "cant find your country"
	exit
fi
echo "end"
