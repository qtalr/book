function Header(element)
  if (element.classes:includes("content-hidden") and quarto.doc.isFormat(element.attributes["when-format"]))
      or (element.classes:includes("content-visible") and not quarto.doc.isFormat(element.attributes["when-format"])) then
      return {}
  end
end
