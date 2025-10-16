
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