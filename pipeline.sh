echo Cleaning up
rm *.txt
rm *.tmp
rm *.csv
echo Download data
curl https://github.com/zonca/swcarpentry-workshop-pandas/blob/master/rawdata/rawdata.zip?raw=true -o rawdata.zip -L -k
echo unpack data
unzip rawdata.zip
rm rawdata.zip

rm *.tmp

for a in *.txt
do 
 mv $a ${a/txt/csv}
done

echo Available csv files
ls *.csv

for a in *data.csv
do
 /Users/Claudia/anaconda/bin/ipython analyze_mosquitos_data_script.py $a
done

mv *png figures/
mv *parameters.csv parameters/


