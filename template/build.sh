#!/bin/bash

echo "#include \"./layout/preamble.typ\"" >> main.typ
for file in ./pages/*; do
    if [[ -f "$file" ]]; then
        echo "#include \"$file\"" >> main.typ
    fi
done
echo "#include \"./layout/bib.typ\"" >> main.typ
typst compile main.typ ./pdf/main.pdf && xdg-open ./pdf/main.pdf
rm main.typ
