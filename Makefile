SHELL := /usr/bin/env bash

install:
	brew install python3 # 3.4+ required so pip3 is included
	pip3 install csvtomd

build: install
	# Compensate for trailing whitespace left by Advanced CSV's justify
	cat ec2-instances-list.csv | sed -e :a -e '/^ *\n*$$/{$$d;N;};/\n *$$/ba'> tmp.csv
	csvtomd tmp.csv > ec2-instances-list.md
	rm -f tmp.csv
	cp -af ec2-instances-list.md _includes/

preview: build
	jekyll serve --watch

deploy: build
	git add --all .
	git commit -am "Update site" || true
	git pull
	git push

.PHONY: \
	install \
	build \
	preview \
	deploy \
