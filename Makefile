SHELL := /usr/bin/env bash

install:
	brew install python3 # 3.4+ required so pip3 is included
	pip3 install csvtomd

build: install
	cat ec2-instances-list.csv | sed 's/ *,/,/g' > tmp.csv
	csvtomd tmp.csv > ec2-instances-list.md
	rm -f tmp.csv
	cp -af ec2-instances-list.md _includes/
	cp -af README.md _includes/

preview: build
	jekyll serve --watch

deploy: build
	echo "deploy"

.PHONY: \
	install \
	build \
	preview \
	deploy \
