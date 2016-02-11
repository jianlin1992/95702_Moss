# go to the folder given by parameter
cd $@
shopt -s extglob
# copy source code files into the parent folder under students' andrewID
for dir in */;
	do
	cd $dir
	cp $(find .|grep .java) .
	# remove directories
	rm -R ./*/
	# remove non-java files
	rm *.!(java)
	cd ..
done