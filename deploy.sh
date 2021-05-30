
#!/bin/bash

set -ex

git pull

rm -rf source/_posts/*

git submodule update

function addTag(){
	cd $1
	# git pull

	_dir=../source/_posts/$1

	mkdir -p $_dir

	cp -r snippets/* $_dir
	
	cd $_dir

	for file in `ls`
	do
		target_file=$2'_'$file
		mv $file $target_file
        	sed -i '3s/: /: [/g; 3s/$/',$2']/g' $target_file
        	image_url=$(curl localhost:9092/bed/random)
        	sed -i '5a![]('$image_url')' $target_file
	done

	mv * ../

	cd ..

	rm -rf $1

	cd ../../
}

addTag '30-seconds-of-code' 'js'
addTag '30-seconds-of-git' 'git'
addTag '30-seconds-of-golang' 'golang'
addTag '30-seconds-of-python' 'python'
addTag '30-seconds-of-css' 'css'
addTag '30-seconds-of-react' 'react'

function appendComment(){
        cd 'learn/'$1
        for file in `ls`
        do
                targetFile='../../source/_posts/'$1_$file
                echo $targetFile
                echo '<!--more-->' >> $targetFile
                echo  '***' >> $targetFile
                cat  $file >> $targetFile
        done

}

appendComment 'git'


hexo g
