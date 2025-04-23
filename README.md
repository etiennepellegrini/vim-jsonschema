# vim-jsonschema

💡 A Vim extension that adds syntax highlighting for JSON Schema keywords while preserving JSON indentation, formatting, and plugin behavior.

Created by ChatGPT 4.5

---

## ✅ Features

- Highlights all keywords from [JSON Schema Draft 2020-12](https://json-schema.org/)
- Uses Vim’s filetype chaining (`json.jsonschema`) to inherit base JSON features
- Automatically activates for:
  - Files named `*.schema.json` or `*.jsonschema`
  - Any `.json` file that includes `$schema` near the top

---

## 🔧 Installation

### With [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug '~/path/to/vim-jsonschema'
```

### Or clone manually

```bash
git clone https://github.com/yourname/vim-jsonschema ~/.vim/pack/jsonschema/start/vim-jsonschema
```

---

## 🌟 Filetype Detection

### `ftdetect/jsonschema.vim`

```vim
" Files with schema-specific extensions
au BufNewFile,BufRead *.schema.json,*.jsonschema setfiletype json.jsonschema

" Files containing $schema keyword
au BufReadPost *.json
      \ if getline(1,20)->join("\n") =~ '\$schema' |
      \   setfiletype json.jsonschema |
      \ endif
```

---

## 🌈 Syntax Extension

### `syntax/json.jsonschema.vim`

```vim
" Load standard JSON syntax
runtime! syntax/json.vim

" Add JSON Schema-specific keywords
syntax keyword jsonSchemaKeyword
      \ $schema $id $ref $defs $anchor $dynamicRef $dynamicAnchor $vocabulary $comment
      \ type enum const multipleOf maximum exclusiveMaximum minimum exclusiveMinimum
      \ maxLength minLength pattern format contentMediaType contentEncoding contentSchema
      \ items additionalItems prefixItems contains maxItems minItems uniqueItems
      \ maxContains minContains properties patternProperties additionalProperties
      \ propertyNames required dependentSchemas dependentRequired
      \ allOf anyOf oneOf not if then else
      \ unevaluatedItems unevaluatedProperties
      \ title description default deprecated readOnly writeOnly examples

highlight default link jsonSchemaKeyword Keyword

let b:current_syntax = "jsonschema"
```

---

## 🎨 Customization

To override how Schema keywords appear:

```vim
highlight jsonSchemaKeyword guifg=#FF8800 ctermfg=208 term=bold
```

---

## 🔍 Debugging

```vim
:set filetype?
:verbose setlocal shiftwidth?
:verbose syntax
```

Use these to confirm that `json.jsonschema` is active, and all fallback behaviors (like indenting) work as expected.

---

## 📦 License

MIT
