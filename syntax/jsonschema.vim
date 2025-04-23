" Base JSON syntax
runtime! syntax/json.vim

" --- JSON Schema keywords (Draft 2020-12)
" Load standard JSON syntax
runtime! syntax/json.vim

" Highlight all JSON Schema keywords via syntax match for full override behavior
syntax match jsonSchemaKeyword /"\$schema"/
syntax match jsonSchemaKeyword /"\$id"/
syntax match jsonSchemaKeyword /"\$ref"/
syntax match jsonSchemaKeyword /"\$defs"/
syntax match jsonSchemaKeyword /"\$anchor"/
syntax match jsonSchemaKeyword /"\$dynamicRef"/
syntax match jsonSchemaKeyword /"\$dynamicAnchor"/
syntax match jsonSchemaKeyword /"\$vocabulary"/
syntax match jsonSchemaKeyword /"\$comment"/

" Validation keywords
syntax match jsonSchemaKeyword /"type"/
syntax match jsonSchemaKeyword /"enum"/
syntax match jsonSchemaKeyword /"const"/

" Numeric constraints
syntax match jsonSchemaKeyword /"multipleOf"/
syntax match jsonSchemaKeyword /"maximum"/
syntax match jsonSchemaKeyword /"exclusiveMaximum"/
syntax match jsonSchemaKeyword /"minimum"/
syntax match jsonSchemaKeyword /"exclusiveMinimum"/

" String constraints
syntax match jsonSchemaKeyword /"maxLength"/
syntax match jsonSchemaKeyword /"minLength"/
syntax match jsonSchemaKeyword /"pattern"/
syntax match jsonSchemaKeyword /"format"/
syntax match jsonSchemaKeyword /"contentMediaType"/
syntax match jsonSchemaKeyword /"contentEncoding"/
syntax match jsonSchemaKeyword /"contentSchema"/

" Array constraints
syntax match jsonSchemaKeyword /"items"/
syntax match jsonSchemaKeyword /"additionalItems"/
syntax match jsonSchemaKeyword /"prefixItems"/
syntax match jsonSchemaKeyword /"contains"/
syntax match jsonSchemaKeyword /"maxItems"/
syntax match jsonSchemaKeyword /"minItems"/
syntax match jsonSchemaKeyword /"uniqueItems"/
syntax match jsonSchemaKeyword /"maxContains"/
syntax match jsonSchemaKeyword /"minContains"/

" Object constraints
syntax match jsonSchemaKeyword /"properties"/
syntax match jsonSchemaKeyword /"patternProperties"/
syntax match jsonSchemaKeyword /"additionalProperties"/
syntax match jsonSchemaKeyword /"propertyNames"/
syntax match jsonSchemaKeyword /"required"/
syntax match jsonSchemaKeyword /"dependentSchemas"/
syntax match jsonSchemaKeyword /"dependentRequired"/

" Logical keywords
syntax match jsonSchemaKeyword /"allOf"/
syntax match jsonSchemaKeyword /"anyOf"/
syntax match jsonSchemaKeyword /"oneOf"/
syntax match jsonSchemaKeyword /"not"/
syntax match jsonSchemaKeyword /"if"/
syntax match jsonSchemaKeyword /"then"/
syntax match jsonSchemaKeyword /"else"/

" Evaluation keywords
syntax match jsonSchemaKeyword /"unevaluatedItems"/
syntax match jsonSchemaKeyword /"unevaluatedProperties"/

" Metadata & annotation
syntax match jsonSchemaKeyword /"title"/
syntax match jsonSchemaKeyword /"description"/
syntax match jsonSchemaKeyword /"default"/
syntax match jsonSchemaKeyword /"deprecated"/
syntax match jsonSchemaKeyword /"readOnly"/
syntax match jsonSchemaKeyword /"writeOnly"/
syntax match jsonSchemaKeyword /"examples"/

highlight default link jsonSchemaKeyword Keyword

" Set our syntax to override b:current_syntax
let b:current_syntax = "jsonschema"
