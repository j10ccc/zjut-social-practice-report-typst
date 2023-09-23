#import "/constants/fonts.typ": font_family

#let catalog() = {
  set text(font: font_family.songti, size: 12pt)
  show outline.entry.where(
    level: 1
  ): it => {
    text(it, weight: "bold")
    v(.4em, weak: true)
  }

  show outline.entry.where(
    level: 2
  ): it => {
    text(it)
    v(.2em, weak: true)
  }

  align(center)[
    #text("目录", size: 18pt, weight: "bold")
    #v(36pt)
  ]

  outline(
    title: none,
    indent: auto
  )
}