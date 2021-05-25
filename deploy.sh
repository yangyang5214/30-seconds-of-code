
#!/bin/bash

set -ex

cd 30-seconds-of-code

# git pull

cp -r snippets/* ../source/_posts/

cd ..

cd source/_posts


for file in `ls`
do 
 	sed -i '3s/: /: [/g; 3s/$/]/g' $file
done

cd ../../

hexo g
