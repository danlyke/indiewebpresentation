TARGETDIR = /home/danlyke/websites/flutterby.net/public_html_static/indiewebpreso

all:
	landslide presentation.md
	rsync -avz themes $(TARGETDIR)
	rsync -avz diagrams $(TARGETDIR)
	perl -e 'while (<>) { s%file:///usr/lib/python2.7/dist-packages/landslide/landslide/%%g; s%file:///home/danlyke/code/nodejspresentation/%%g; print }' <  presentation.html > $(TARGETDIR)presentation.html

deploy:
	echo "Okay, now I'm copying your stuff to the server"
	mkdir -p /home/danlyke/websites/flutterby.net/public_html_static/indiewebpreso

