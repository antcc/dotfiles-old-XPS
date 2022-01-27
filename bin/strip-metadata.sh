#!/bin/bash

for f in ./*.pdf; do 
	exiftool -q -q -all:all= "$f" && qpdf "$f" --linearize --replace-input; 
done
