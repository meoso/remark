#!/bin/bash
cd `dirname $0`
PWD=${pwd}
( set -x; sudo apt-get install nodejs nodejs-legacy )
( set -x; sudo npm install markdown-to-slides -g )
source ./update-remarkjs.sh
( set -x; markdown-to-slides -t example -s ./remark-style.css  -j ./remark-latest.min.js example.md -o example.html)
( set -x; x-www-browser ./example.html )
echo
echo "   Help: markdown-to-slides --help (https://www.npmjs.com/package/markdown-to-slides)"
echo "  Usage: markdown-to-slides -t title -s $PWD/remark-style.css  -j $PWD/remark-latest.min.js inputfile.md -o outputfile.html"
echo "    See: http://remarkjs.com and https://github.com/gnab/remark/wiki for REMARK MARKDOWN usage."
echo "Suggest: Add an alias to your ~/.bashrc"
echo
