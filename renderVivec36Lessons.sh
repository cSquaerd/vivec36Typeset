#!/bin/bash
pandoc --toc -V geometry:margin=1.25in -o vivec36LessonsTypeset.pdf vivec36LessonsTypeset.md
pdfjam --signature 4 --openright true --landscape --twoside --suffix sig4 vivec36LessonsTypeset.pdf

