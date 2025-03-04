#!/bin/bash

echo "#include \"./layout/preamble.typ\"" >> main.typ
echo "#include \"./layout/bib.typ\"" >> main.typ
typst compile main.typ ./pdf/main.pdf && xdg-open ./pdf/main.pdf
