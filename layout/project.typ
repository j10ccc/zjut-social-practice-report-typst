#import "/layout/cover.typ": cover
#import "/layout/catalog.typ": catalog
#import "/constants/fonts.typ": font_family

#let project(
  body,
  ..meta
) = {
  set page(
    paper: "a4",
    numbering: "1"
  )
  set heading(numbering: "1.")
  set text(
    size: 11pt,
    font: font_family.songti
  )

  // cover
  cover(meta.named())
  pagebreak()

  // catalog
  catalog()
  pagebreak()

  // main content
  show par: set block(above: 1.4em, below: 2em)
  set par(
    leading: 20pt,
    linebreaks: "simple",
    first-line-indent: 2em
  )
  show heading: it => {
    let empty_par = {
      v(-1em)
      box()
    }
    let margin = (above: 0em, below: 0em);
    if it.level == 1 {
      margin = (above: 3em, below: 1.2em)
    } else if it.level == 2 {
      margin = (above: 2.6em, below: 1em)
    }
    set block(..margin)
    it
    empty_par
  }
  [#body]
}