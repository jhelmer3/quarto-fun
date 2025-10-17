# quarto-fun

Lua filter version has a couple changes. 

1. Adding some stuff to the YAML header

```
format:
  revealjs:
    include-in-header:
      - text: |
          <script>
            document.addEventListener('DOMContentLoaded', () => {
            document.body.dataset.paramV0 = "{{< meta params.v0 >}}";
            });
          </script>
filters:
  - _extensions/answer
```

2. Adding some CSS that changes the way we're removing the hidden content

```
body[data-param-v0="true"] .hide-if-v0 {
  display: none;
}
```

3. File within `_extensions/answer` that has Lua code

```
function Div(el)
  if el.classes:includes("answer") then
    table.insert(el.classes, "fragment")
    table.insert(el.classes, "content-visible")
    table.insert(el.classes, "hide-if-v0") -- custom class instead of unless-meta
    el.attributes["style"] = "color:pink"
  end
  return el
end

function Span(el)
  if el.classes:includes("answer") then
    table.insert(el.classes, "fragment")
    table.insert(el.classes, "content-visible")
    table.insert(el.classes, "hide-if-v0") -- custom class instead of unless-meta
    el.attributes["style"] = "color:pink"
  end
  return el
end
```

4. `yml` file also needed for Lua (also within `_extensions/answer`)
```
title: Answer
author: Jess Helmer
version: 1.0.0
quarto-required: ">=1.7.0"
contributes:
  filters:
    - answer.lua

```

