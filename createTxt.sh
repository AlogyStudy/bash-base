#!/usr/bin/env bash

cd /e/Sites/bash/

if !(test -d 'shell_tut'); then
	mkdir shell_tut
fi

cd shell_tut

for i in {1..10}; do
	touch test_$i.txt
done

echo 'ok'
