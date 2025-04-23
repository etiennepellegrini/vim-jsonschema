" Extend standard JSON syntax
runtime! syntax/json.vim

" JSON Schema keywords (Draft 2020-12)
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

" Highlight Schema keywords like language keywords
highlight default link jsonSchemaKeyword Keyword

let b:current_syntax = "jsonschema"
