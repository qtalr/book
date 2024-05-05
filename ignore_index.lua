-- @e-miz https://github.com/quarto-dev/quarto-cli/issues/2140#issuecomment-2000383217
function Header(element)
  if (element.classes:includes("content-hidden") and quarto.doc.isFormat(element.attributes["when-format"]))
      or (element.classes:includes("content-visible") and not quarto.doc.isFormat(element.attributes["when-format"])) then
      return {}
  end
end
