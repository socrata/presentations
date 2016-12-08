jekyll:
	bundle exec jekyll build --incremental

clean:
	rm -rf public

# Generates a build stamp and plugs it into a file in public
stamp:
	echo "SHA: `git rev-parse HEAD`" > ./public/build.txt
	echo "Date: `date`" >> ./public/build.txt

surge:
	surge --project ./public --domain https://$(DOMAIN)

all: clean jekyll stamp
