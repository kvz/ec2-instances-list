SHELL := /usr/bin/env bash

install:
	brew install gnu-sed python3 # 3.4+ required so pip3 is included
	pip3 install csvtomd

build: install
	git pull
	# Compensate for trailing whitespace left by Advanced CSV's justify
	gsed -i ec2-instances-list.csv -e 's/^[ \t]*//g;s/[ \t]*$$//g' -e :a -e '/^ *\n*$$/{$$d;N;};/\n *$$/ba'
	csvtomd ec2-instances-list.csv > ec2-instances-list.md

preview: build
	jekyll serve --watch

deploy: build
	git add --all .
	git commit -am "Update site" || true
	git pull
	git push
	@echo "Check out https://kvz.github.io/ec2-instances-list"

.PHONY: \
	install \
	build \
	preview \
	deploy \
