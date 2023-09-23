#import "/layout/project.typ": project

#let meta = (
  department: "$学院",
  major: "$专业",
  title: "$报告名称",
  author: "$姓名",
  id: "$学号",
  teacher: "$指导老师",
  date: "$完成日期"
)
#show: project.with(..meta)
