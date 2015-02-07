link_dir := $(shell mktemp -d /tmp/linkdoc.XXXX)

all:
	jekyll build
	-tput bel
	exit 0
