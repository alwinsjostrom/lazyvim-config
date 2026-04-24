; extends

((style_element
   (start_tag
     (attribute
       (attribute_name) @_name
       (quoted_attribute_value (attribute_value) @_lang)))
   (raw_text) @injection.content)
 (#eq? @_name "lang")
 (#eq? @_lang "less")
 (#set! injection.language "scss"))
