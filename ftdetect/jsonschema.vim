" Detect files by extension
au BufNewFile,BufRead *.schema.json,*.jsonschema set filetype=jsonschema

" Or detect by presence of $schema keyword in content
au BufReadPost *.json
      \ if getline(1,20)->join("\n") =~ '\$schema' |
      \   setfiletype jsonschema |
      \ endif
