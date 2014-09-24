link_dir := $(shell mktemp -d /tmp/linkdoc.XXXX)

all:
	jekyll build
	-terminal-notifier -title "Jekyll" -message "Build complete."
	-tput bel
	exit 0
