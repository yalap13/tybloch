#import "@preview/tidy:0.4.3"
#import "/src/tybloch.typ"

#set page(numbering: "1")

#let main-module = tidy.parse-module(
  read("/src/tybloch.typ"),
  scope: (tybloch: tybloch),
)
#let util-module = tidy.parse-module(read("/src/utils.typ"))

#align(center, text(size: 1.5em)[`tybloch` Documentation])

#outline(
  depth: 2,
  title: [Functions API],
)
= tybloch module
#tidy.show-module(
  main-module,
  style: tidy.styles.default,
  show-outline: false,
  omit-empty-param-descriptions: false,
  first-heading-level: 1,
)

#pagebreak()
= utils module
#tidy.show-module(
  util-module,
  style: tidy.styles.default,
  show-outline: false,
  omit-empty-param-descriptions: false,
  first-heading-level: 1,
)
