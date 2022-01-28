ip="$(curl ifconfig.me --silent)"
if [[ -z $ip ]]
then
    unset ip
fi

echo $ip
