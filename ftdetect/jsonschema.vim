" Apply json.jsonschema filetype to schema-specific files

" Files with schema-specific extensions
au BufNewFile,BufRead *.schema.json,*.jsonschema setfiletype json.jsonschema

" Files containing $schema keyword in first 20 lines
au BufReadPost *.json
      \ if getline(1,20)->join("\n") =~ '\$schema' |
      \   setfiletype json.jsonschema |
      \ endif
