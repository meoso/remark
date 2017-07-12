remark
===

This is simply an environment setup for making custom [remarkjs](http://remarkjs.com/#1) presentations in Debian.

This repo includes the following:
 - `init.sh` is a run-once installer for `nodejs`, `nodejs-legacy`, `markdown-to-slides`, and the latest remarkjs code.
 - `./update-remarkjs.sh` downloads the latest remark javascript.  You may run at your leisure for remarkjs updates.
 - `remark-style.css` is a Cascading Style Sheet (CSS) extracted directly from the http://remarkjs.com boilerplate html source.
 - `example.md` is a very basic example markdown file for testing.

The files `remark-style.css` and `remark-latest.min.js` are the core components for formatting the outputted presentation html.  `markdown-to-slides` is the tool to do so.

Usage: `markdown-to-slides -s /pathto/remark-style.css  -j /pathto/remark-latest.min.js inputfile.md -o outputfile.html`

You may then open the outputted file in your favorite web-browser.  Probably with the command `x-www-browser ./outputfile.html`.
