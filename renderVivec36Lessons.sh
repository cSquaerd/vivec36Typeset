#!/bin/bash
pandoc --toc -V geometry:margin=1.25in -o vivec36LessonsTypeset.pdf vivec36LessonsTypeset.md
sed 's/ \$\\hfill\$//g' vivec36LessonsTypeset.md > vivec36LessonsTypesetNoHFill.md
pandoc --toc --gladtex -t epub3 -o vivec36LessonsTypeset.epub vivec36LessonsTypesetNoHFill.md
rm vivec36LessonsTypesetNoHFill.md
pdfjam --signature 4 --openright true --landscape --twoside --suffix sig4 vivec36LessonsTypeset.pdf

