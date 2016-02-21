# go to the folder given by parameter
cd $@
wd="${PWD}"
shopt -s extglob
rm *.!(zip)
for zipfile in *.zip;
do
	# unzip files of projects

	# get the filename withour .zip
	dirname="${zipfile%.*}"
	# remove spaces
	dirname="${dirname//[[:blank:]]/}"
	# recreate folder for a student
	mkdir "${dirname}"
	# unzip files to the dir just created
	unzip -oj "${zipfile}" -d "${dirname}"
	# go to each students' folder
	cd "${dirname}"
	rm *.!(zip)
	for task in *.zip;
	do
		taskdir="${task%.*}_${dirname##*_}"
		full_path="${wd}/${taskdir}"
		# create directories like Project1Task1_andrewid
		mkdir "${full_path}"
		# unzip all tasks into Project1Task1_andrewid
		unzip -oj "$task" -d "${full_path}"
		# remove all non-java files
		rm "${full_path}"/*.!(java)
	done
	cd "${wd}"
	# copy source code files into the parent folder under students' andrewID
	#for dir in */;
		#do
		#echo $dir
		#cd $dir
		
		#cp $(find .|grep .java) .
		# remove directories
		#rm -R ./*/
		# remove non-java files
		#rm *.!(java)
		#cd ..
	#done
done