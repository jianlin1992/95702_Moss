##A Guide to Using Moss
**_Note: this guide is Unix-based. Errors might happen under Windows environment._**
>Plagiarism Check for Programs. See http://theory.stanford.edu/~aiken/moss/

###Last Update
Jianlin Zhang (jianlin1992@gmail.com)

Feb 13, 2016

###Prepare Files

>**Working Directory**:
This is the folder where all files and directories are located, including `moss.pl`, `solution_directory`, `base_directory`, `solutions`, and potential archived result from Moss.

#####1. Download all students’ codes from blackboard and copy them into the `solutions` folder.

Under solutions, there must be directly zip files of submissions of each student with no archive folder.
```
solutions/
|-- student1.zip
|-- student2.zip
|-- student3.zip
|-- ...
```

#####2. Execute copyFile.sh with`./copyFile.sh solutions`
After execution, solutions folder should contain folders named like `Project1Task1AndrewID`. 

However, there are students who don’t name their Netbeans project zips as required. We need to manually check any outliers.

#####3. Create a folder named `solutions_directory`.
Copy students’ submission folders to `solutions_directory` task by task. 
- For example, sort folders by name and copy all folders named `Project1Task1_andrewID`.

A valid directory containing all students’ solutions should look like this:
```
solution_directory/
|-- Project1Task1_student1/
    |-- classA.java
    |-- ...
|-- Project1Task1_student2/
    |-- ...
|-- Project1Task1_student3/
    |-- ...
```
#####4. Create another folder called `base_directory`.
Put source codes provided by faculties into this directory.
- Note: base files will be served one by one as parameters in moss.pl.

###Execute the Submission Program
#####Execute moss.pl with the following parameters
`./moss [-l language] [-d] [-b basefile1] ... [-b basefilen] [-m #] [-c "string"] file1 file2 file3`

>Example:
>```
./moss -l java -d –b base_directory/file1.java –b base_directory/file2.java \
                  –c “Project1” solutions_directory/*/*
```

- If you can’t execute it, execute: `chmod 777 moss.pl` to grant permission. 
- Please read the instructions in [moss.pl](Read_to_use/moss.pl) for more details

Wait until the program provides a url to the result, which may take one or two minutes.

###Fetch Results from Moss
Moss platform is deployed as an online service, we don’t have access directly to the system, but we can access the result given by Moss.
#####Option 1: View in browser (Recommended)
Open the url of results in browser. http://moss.stanford.edu/results/[result#]
#####Option 2: Download to local
`wget -r -np http://moss.stanford.edu/results/result#`

You might need to install `wget` beforehand.

###Check Results
In the webpage, we will get results given by Moss. The results are somewhat sorted by percentages that two files have in common. We need to **MANUALLY** check the top-rated files before making any conclusion about academic plagiarism!

#####Screenshots:
![screenshot1](Archives/Result_Screenshot1.png)
![screenshot2](Archives/Result_Screenshot2.png)




