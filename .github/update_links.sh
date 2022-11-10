#!/usr/bin/env bash

echo "now at $1"

original_name="randName/gh-template-tests"

for filename in $(git ls-files); do
	sed -i "s/$original_name/$1/g" $filename
	echo "updated $filename"
done

rm -rf .github
rm -rf docs