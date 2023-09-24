# ZJUT-Social-Practice-Report-Typst

A template of social practice report for zjuters.

## Requirements

- [typst](https://typst.app)
- One font for report body(recommend `songti`)

## Layout convention

- The font should be an 11pt serif font
- The title should be in bold
- The paper should be `a4` sized, numbered in the center of the footer

## Usage

> TL;DR, maybe you can check out `/example.typ` for a more quick start

0. Clone the repo.

1. Choose one of your system font for compile, add it by editing `font_family`. It is recommended to choose one containing both **regular** and **bold** weight. By the words, for Chinese characters, `songti` collection should be better.

```typst
#let font_family = (
  songti: "$FONT_NAME"
)
```

List all of your system fonts by

```sh
$ typst fonts
```

2. Get start from `/main.typ`, edit the `meta` to customize your information displayed in report cover. You can delete or add some keys & values.

```typst
#let meta = (
  "姓       名": "$姓名",
  "指导老师": "$指导老师",
)
```

**NOTE**: For fully aligning Chinese characters in the key, you can type white space between words to make visual gaps.

3. Complete your main report content below the `#show: project.with()` declaration.

4. Compile your work by

```sh
$ typst compile main.typ
```

## Further

For more customized feature, you could read following suggestions.

### Image

Attach image file in the end of the report.

```typst
// /main.typ

// ...report content

#image("/assets/photo_1.jpg")

// also a grid layout

#grid(
  columns: (auto, auto),
  gutter: 16pt,
  image("/assets/photo_1.jpg"),
  image("/assets/photo_2.jpg"),
  image("/assets/photo_3.jpg"),
  image("/assets/photo_4.jpg"),
)
```

### Page header

Display report title in pages header besides cover and catalog.

```typst
// /main.typ
#let meta = (
  "实践报告": "一个响亮的报告名"
)
```

```typst
// /layout/project.typ

set page(
  // ...
  header: {
    locate(loc => {
      if loc.page() >= 3 { // content starts from 3th page
        align(right)[
          #text(size: 10pt)[
            #meta.named().at("实践报告") | 社会实践报告 // get value from your meta
          ]
        ]
      }
    })
  }
)

```

## Reference

- [zjut-report-typst](https://github.com/zjutjh/zjut-report-typst)
