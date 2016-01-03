#!/bin/bash

sed -i -e 's/localhost:1313/sprunger-pflege.ch/g' public/index.html 
sed -i -e 's/localhost:1313/sprunger-pflege.ch/g' public/index.xml
sed -i -e 's/localhost:1313/sprunger-pflege.ch/g' public/sitemap.xml  

rm -rf public/index.html-e
rm -rf public/index.xml-e
rm -rf public/sitemap.xml-e

lines=`wc -l public/index.html | cut -f6 -d ' '`
lines=$((lines-7))

head -n $lines public/index.html > public/index2.html

mv public/index2.html public/index.html

echo "</body></html>" >> public/index.html

scp -rp public/* nm:/home/nicolas/projects/sprunger-pflege/

