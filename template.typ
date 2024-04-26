#let project(title: "", authors: (), logo: none, body) = {
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: ("Linux Libertine", "PingFang SC"), lang: "zh")
  set heading(numbering: "1.1")
  show regex("\p{sc=Hani}+"): set text(size: 0.95em)
  show raw: set text(font: ("JetBrains Mono", "PingFang SC"))

  v(0.6fr)
  if logo != none {
    align(right, image(logo, width: 26%))
  }
  v(9.6fr)

  text(2em, weight: 700, title)

  pad(
    top: 0.7em,
    right: 20%,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(start, strong(author))),
    ),
  )

  v(2.4fr)
  pagebreak()


  outline(depth: 4, indent: true)
  pagebreak()


  set par(justify: true)

  body
}