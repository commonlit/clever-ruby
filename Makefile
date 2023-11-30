.PHONY: all test build run
SHELL := /bin/bash

all: build test

test:
	bundle install && bundle exec rake spec

build:
	./override/override.sh
