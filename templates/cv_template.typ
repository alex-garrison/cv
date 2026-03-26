#import "@preview/nth:1.0.1": *

#let date(
  date,
  expected: false
) = {
  if expected {"Expected "}

  date.display("[month repr:short] [year]")
}

#let experience(
  body,
  title: none,
  org: none,
  location: none,
  date-range: none,
) = {
  block(
    width: 100%,
    stroke: (left: 1.5pt + gray, rest: none),
    inset: (left: 10pt),
    above: 0.8em,
    below: 0.8em,
  )[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      [*#title*],
      [#date-range],
    )

    #if org != none or location != none {
      grid(
        columns: (1fr, auto),
        align: (left, right),
        [#org],
        [#location],
      )
    }

    #v(0.2em)

    #body
  ]
}

#let skill-entry(
  body,
  skill-name: none
) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    align: (left, right),
    [*#skill-name*],
    body,
  )
}

#let cv(
  body,
  name: none,
  tagline: none,
  email: none,
  phone-number: none,
  github: none,
  linkedin: none,
) = {
  set page(
    paper: "a4",
    margin: 0.5in,
  )

  set text(
    font: "Lato",
    size: 10pt,
    lang: "en",
    region: "gb",
  )

  set par(
    justify: true,
    spacing: 0.75em
  )

  // Level 1 heading styling
  show heading.where(level: 1): it => block(
    width: 100%,
    above: 0.8em,
    below: 0.4em,
  )[
    #set align(center)
    #set text(size: 10pt, weight: "bold")

    #upper(it)
    #context {
      let note = state("section-note").get()
      if note != none {
        place(right + horizon, text(size: 8pt, weight: "regular", style: "italic")[#note])
      }
    }
    #v(-0.3em)
    #line(length: 100%)
    #state("section-note").update(none)
  ]

  // Level 2 heading styling
  show heading.where(level: 2): set text(
    style: "italic",
    size: 10pt,
    weight: "regular",
  )

  set document(title: name)

  // Header
  align(center + top)[
    #text(size: 14pt, weight: "bold")[#upper(name)]

    #let items = (
      link("mailto:" + email),
      phone-number,
      underline(link(github)[github/#github.split("/").at(-1)]),
      underline(link(linkedin)[LinkedIn]),
    )
    #items.join([ #sym.circle.filled.tiny ])

    #if tagline != none {
      v(0.2em)
      text(style: "italic", size: 9pt)[#tagline]
    }
  ]

  h(1em)

  body
}
