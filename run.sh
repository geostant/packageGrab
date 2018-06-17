yumdownloader --resolve --downloadonly $1
for dep in $(repoquery --requires --resolve $1)
do 
	yumdownloader --resolve --downloadonly $dep
done
