
#!/bin/bash

set -ex

rm -rf source/_posts/*

function addTag(){
	cd $1
	git pull

	_dir=../source/_posts/$1

	mkdir -p $_dir

	cp -r snippets/* $_dir
	
	cd $_dir

	for file in `ls`
	do
		target_file=$2'_'$file
		mv $file $target_file
        	sed -i '3s/: /: [/g; 3s/$/',$2']/g' $target_file
        	image_url=$(curl https://www.hexianwei.com/api/bed/random)
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

hexo g
