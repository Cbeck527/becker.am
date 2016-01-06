becker.am
=========

My personal website, built with jekyll. Heavily based on [Sven
Read's](http://www.svenread.com/) theme
[Chiara](http://www.svenread.com/chiara/).

I decided to simplify my site by having all of the content written in markdown
and all of the resulting files be static HTML. It seemed silly to run something
like Koken or Ghost for simple webpages. Plus, having your site on github is
serious haxx0r points, yo.


## Building your own copy

[![Circle CI](https://circleci.com/gh/Cbeck527/becker.am.svg?style=svg)](https://circleci.com/gh/Cbeck527/becker.am)

It's pretty easy to build a copy of my site. I used
[jekyll](http://jekyllrb.com/) which is a ruby program that compiles markdown
files into static HTML documents which makes it super easy to put on the web.

Make sure you have ruby/jekyll installed by doing `gem install jekyll`

1. clone this repo

   `git clone https://github.com/Cbeck527/becker.am.`

2. cd into the folder

    `cd becker.am`

3. Build the site

   `jekyll build`

You'll have a new folder in the directory called `_site` that has all of the
compiled HTML files ready to be thrown at a web server. Pretty nifty!

## Fun extra points

I've been on a pretty big DevOps kick recently so I wrote a basic ansible
playbook to automatically build the site and upload it to my webserver in the
proper directory. It works for me, but YMMV.

Feel free to hit me up on twitter with any questions:
[@Cbeck527](https://twitter.com/cbeck527)
