link_dir := $(shell mktemp -d /tmp/linkdoc.XXXX)

# Builds SASS->CSS, compiles the site, and ensures that search.json is updated
# If you've changed content, always commit search.json
all:
	sass sass/common.sass:css/common.css
	jekyll build
	-terminal-notifier -title "Jekyll" -message "Build complete."
	-tput bel
	exit 0

# Builds the site and runs linklint to check for bad links
test: all
	linklint -doc ${link_dir} -root public /@
	open ${link_dir}/index.html

# Builds sass locally directly to ./public so you con't have to run a full jekyll build when hacking sass
sasslocal:
	sass --watch sass/common.sass:public/css/common.css
