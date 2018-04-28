#!/bin/bash
dpkg-scanpackages debs /dev/null > Packages

rm Packages.gz

rm Packages.bz2

gzip -c9 Packages > Packages.gz

bzip2 -c9 Packages > Packages.bz2

dpkg-scanpackages -m ./ /dev/null | gzip > Packages.gz;

dpkg-scanpackages -m ./ /dev/null | bzip2 > Packages.bz2;

dpkg-scanpackages -m ./ /dev/null > Packages;


git init
#git remote add origin /Volumes/SD/ca13ra1.github.io-master/repo/.git/
git add -A
git commit -m "Update repo content"
git push origin master
