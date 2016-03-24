#!/bin/sh

command_exists() {
	local command="$1"
	command -v "$command" &> /dev/null
}

if command_exists "uglifyjs"; then
	uglifyjs jquery.imgareaselect.dev.js -o jquery.imgareaselect.min.js
else
	echo "You should install uglifyjs (npm install -g uglify-js)"
fi
