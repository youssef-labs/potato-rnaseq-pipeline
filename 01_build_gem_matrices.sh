#!/bin/bash

echo "GEM_X.csv"

#Temp X file header 
sed 's/-a/Rep.1/g; s/-b/Rep.2/g; s/-c/Rep.3/g' VarX_Header.csv > Temp_X.csv

#Find filter and deduplicate X
find "VarX" -type f -exec cat {} + | \
grep -E "^Soltu\.DM\.(0[1-9]|1[0-2])" | \
sort -t, -u -k1,1 >> Temp_X.csv

#Rename X
mv Temp_X.csv GEM_X.csv

echo "GEM_Y.csv"

#Temp Y file header
sed 's/-a/Rep.1/g; s/-b/Rep.2/g; s/-c/Rep.3/g' VarY_Header.csv > Temp_Y.csv

#Combine and filter Y
find "VarY" -type f -exec cat {} + | \
grep -E "^Soltu\.DM\.(0[1-9]|1[0-2])" | \
sort -t, -u -k1,1 >> Temp_Y.csv

#Rename Y
mv Temp_Y.csv GEM_Y.csv

echo "Done"
