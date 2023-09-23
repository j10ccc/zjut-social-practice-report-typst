#import "layout/cover.typ": cover
#import "layout/catalog.typ": catalog
#import "/constants/fonts.typ": font_family

#let meta = (
  department: "$学院",
  major: "$专业",
  title: "$报告名称",
  author: "$姓名",
  id: "$学号",
  teacher: "$指导老师",
  date: "$完成日期"
)

// cover

#cover(meta)

#pagebreak()

// catalog

#set heading(numbering: "1.")

#catalog()

#pagebreak()
