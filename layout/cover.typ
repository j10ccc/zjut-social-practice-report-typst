#let cover(meta) = {
  let table(kv) = {
    for (key, value) in kv [
      #grid(
        columns: (auto, 200pt),
        gutter: 4pt,
        rect(
          width: 100%,
          inset: 2pt,
          stroke: none,
          text(size: 18pt, key)
        ),
        rect(
          width: 100%,
          inset: 2pt,
          stroke: (bottom: 1pt + black),
          text(size: 16pt, value, bottom-edge: "descender")
        )
      )
    ]
  }

  align(center)[
    #align(top)[
      #image("/assets/brand.png", width: 340pt)
      #v(64pt)
      #text("浙江工业大学思想政治理论课社会实践报告", size: 18pt, weight: "bold")
    ]
    
    #align(bottom)[
      #rect(width: 300pt, stroke: none)[
        #table(meta)
      ]
    ]
  ]
}
