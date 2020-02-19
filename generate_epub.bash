#!/bin/bash
# ----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <alessandro.chimetto.it@gmail.com> wrote this file. As long as you retain
# this notice you can do whatever you want with this stuff. If we meet some
# day, and you think this stuff is worth it, you can buy me a beer in return.
# Alessandro Chimetto
# ----------------------------------------------------------------------------

mdconcat="mdconcat.md"
metadata="metadata.yaml"
out="97things"

rm -f ${out}.epub

for text in en/thing_??/README.md
do
    (cat "${text}") >> ${mdconcat}
    printf "\n\n" >> ${mdconcat}
done

pandoc ${mdconcat} ${metadata} -s -o ${out}.epub

rm ${mdconcat}

