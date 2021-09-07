#!/bin/bash

echo $2_header.html

cat $2_header.html $1 $2_footer.html > $3
cat $3