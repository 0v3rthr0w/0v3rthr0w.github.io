#!/bin/bash

ls resources-* |
while read f
do
    newFile="$f.new"
    echo "---" >> $newFile
    echo "title: $(echo $f | sed 's/resources-//g' | cut -d\. -f1)" >> $newFile
    echo "layout: page" >> $newFile
    echo "---" >> $newFile
    cat $f >> $newFile
    mv $newFile $f
done

rm resources-thinc_process.md
rm resources-pwk.md
