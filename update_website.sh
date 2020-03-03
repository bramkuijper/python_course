#!/usr/bin/env bash

# see https://stackoverflow.com/questions/59895/how-to-get-the-source-directory-of-a-bash-script-from-within-the-script-itself

# get current directory in which script resides
current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


# directory of day 1
day_1_dir="$current_dir/day_1/"
day_2_dir="$current_dir/day_2/"
day_3_dir="$current_dir/day_3/"

website_repo="$current_dir/../exeter-data-analytics.github.io/workshops/intro-to-python/"

if [[ ! -d "$website_repo" ]]
then
    echo "$website_repo does not exist, exiting"
    exit
fi

### copy slides lecture1
slides_00=00_introduction.pdf
slides_00_dest=00-Introduction.pdf

slides_01=01_variables.pdf
slides_01_dest=01-DataTypes.pdf 

slides_02=02_flow_control.pdf
slides_02_dest=02-FlowControl.pdf

slides_03=03_functions_modules.pdf
slides_03_dest=03-FunctionsModules.pdf

slides_04=01_text_manipulation.pdf
slides_04_dest=04-TextManipulation.pdf

slides_05=02_file_system.pdf
slides_05_dest=05-FileSystem.pdf

slides_06=01_numpy_scipy.pdf
slides_06_dest=06-NumpyScipy.pdf

slides_07=02_matplotlib.pdf
slides_07_dest=07-Matplotlib.pdf

slides_08=03_pandas.pdf
slides_08_dest=08-Pandas.pdf

### now the practicals
practical_01=01_DataTypes_Practical
practical_01_dest=01-DataTypes-Practical
practical_01_ans=01_DataTypes_Practical_Answers
practical_01_ans_dest=01-DataTypes-Practical-Answers

practical_02=02_FlowControl_Practical
practical_02_dest=02-FlowControl-Practical
practical_02_ans=02_FlowControl_Practical_Answers
practical_02_ans_dest=02-FlowControl-Practical-Answers

practical_03=03_FunctionsModules_Practical
practical_03_dest=03-FunctionsModules-Practical
practical_03_ans=03_FunctionsModules_Practical_Answers
practical_03_ans_dest=03-FunctionsModules-Practical-Answers

practical_04=String_Manipulation_Regex_Practical
practical_04_dest=04-TextManipulation-Practical
practical_04_ans=String_Manipulation_Practical_Answers
practical_04_ans_dest=04-TextManipulation-Practical-Answers

practical_05=Files_Practical
practical_05_dest=05-FileSystem-Practical
practical_05_ans=Files_Practical_Answers
practical_05_ans_dest=05-FileSystem-Practical-Answers

echo "copying first lecture"
olddir=`pwd`
cd "$day_1_dir"

make
cp "$slides_00" "$website_repo/$slides_00_dest"
cp "$slides_01" "$website_repo/$slides_01_dest"
cp "$slides_02" "$website_repo/$slides_02_dest"
cp "$slides_03" "$website_repo/$slides_03_dest"

# regenerate practical htmls
jupyter nbconvert --execute --to html "$practical_01.ipynb"
jupyter nbconvert --execute --to html "$practical_01_ans.ipynb"

cp "$practical_01.html" "$website_repo/$practical_01_dest.html"
cp "$practical_01_ans.html" "$website_repo/$practical_01_ans_dest.html"

# practical 02
jupyter nbconvert --execute --to html "$practical_02.ipynb"
jupyter nbconvert --execute --to html "$practical_02_ans.ipynb"

cp "$practical_02.html" "$website_repo/$practical_02_dest.html"
cp "$practical_02_ans.html" "$website_repo/$practical_02_ans_dest.html"

# practical 03
jupyter nbconvert --execute --to html "$practical_03.ipynb"
jupyter nbconvert --execute --to html "$practical_03_ans.ipynb"

cp "$practical_03.html" "$website_repo/$practical_03_dest.html"
cp "$practical_03_ans.html" "$website_repo/$practical_03_ans_dest.html"

cd "$day_2_dir"
make

##### copy lecture slides
cp "$slides_04" "$website_repo/$slides_04_dest"
cp "$slides_05" "$website_repo/$slides_05_dest"

#### practical 04
jupyter nbconvert --execute --to html "$practical_04.ipynb"
jupyter nbconvert --execute --to html "$practical_04_ans.ipynb"

cp "$practical_04.html" "$website_repo/$practical_04_dest.html"
#cp "$practical_04_ans.html" "$website_repo/$practical_04_ans_dest.html"

### practical 05
jupyter nbconvert --execute --to html "$practical_05.ipynb"
jupyter nbconvert --execute --to html "$practical_05_ans.ipynb"

cp "$practical_05.html" "$website_repo/$practical_05_dest.html"
#cp "$practical_05_ans.html" "$website_repo/$practical_05_ans_dest.html"

ls -alnh "$website_repo"

cd "$day_3_dir"
make

cp "$slides_06" "$website_repo/$slides_06_dest"
cp "$slides_07" "$website_repo/$slides_07_dest"
