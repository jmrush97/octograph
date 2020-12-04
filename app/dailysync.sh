# if you need to get data from more than 2 days ago
# change dv to the days to the previous number of days required
dv=`date -d '2 day ago' '+%Y-%m-%d'`
de=`date -d '1 day' '+%Y-%m-%d'`
echo $dv $de
cd /pathto/octograph
python3 /pathto/octograph/app/octopus_to_influxdb.py --from-date=$dv --to-date=$de
