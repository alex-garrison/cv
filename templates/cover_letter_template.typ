#import "@preview/nth:1.0.1": *

#import "@preview/wordometer:0.1.5": word-count, total-words

#show: word-count

#let cover_letter(
  body,
  name: none,
  email: none,
  phone-number: none,
  cv_link: none,
  linkedin: none,
  date: none,
  job_opening: none,
  addressee: none,
  addressee_title: none,
  company_name: none,
  company_address: none,
  word-limit: none,
  show-word-limit-warning: false
) = {
  set page(
    paper: "a4",
    margin: 0.5in,
  )

  set text(
    font: "Lato",
    size: 12pt,
    lang: "en",
    region: "gb",
  )

  set par(
    justify: true,
    spacing: 0.75em,
  )

  set document(title: name)

  let body-wc = state("body-wc", 0)

  // Header
  align(center + top)[
    #text(size: 16pt, weight: "semibold")[#upper(name)]

    #text(size: 10pt)[
      #let items = (
        link("mailto:" + email),
        phone-number,
        underline(link(linkedin)[LinkedIn]),
      )
      #items.join([ #sym.circle.filled.tiny ])
    ]
  ]

  v(1.5em)

  grid(
    columns: (1fr, auto),
    rows: (auto, auto),
    gutter: 1em,
    [
      #date.display("[day] [month repr:long] [year]")
    ],
    [
      #addressee, #addressee_title
    ],
    [
     RE: #job_opening opening
    ],
    [ 
      #company_name

      #company_address
    ]
  )

  [Dear #addressee.split(" ").at(0),]
  
  v(0.25em)

  word-count(exclude: (heading, cite), total => {
    body-wc.update(total.words)

    // Show yellow when the word count is approaching the limit
    // Show red when word count is over the limit
    let text-color = if total.words > word-limit {
        red
      } else if total.words > (word-limit * 0.90) {
        yellow
      } else {
        black
      }
    let fill-color = if text-color == black or not show-word-limit-warning { none } else { text-color.transparentize(80%) }
    block(width: 100%, fill: fill-color)[#text(size: 12pt)[#body]]
  })

  v(0.25em)

  [
    Yours sincerely,
  
    #name.split(" ").at(0)
  ]
}