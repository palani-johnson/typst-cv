#import "@preview/modern-cv:0.7.0": *
#import "info.typ": *

#let date = datetime.today().display("[month repr:long] [day], [year]")

#let entity-info = (
  team: "Company Recruitment Team",
  name: "",
  street-address: none,
  city: none,
)

#show: coverletter.with(
  author: author,
  profile-picture: none,
  closing: "",
  language: "en",
)

#set par(leading: 1em)
#pad(top: 1.5em, bottom: 1.5em)[
  #__justify_align[
    #text(weight: "bold", size: 12pt)[#entity-info.team]
  ][
    #text(weight: "light", style: "italic", size: 9pt)[#date]
  ]

  #pad(top: 0.65em, bottom: 0.65em)[
    #text(weight: "regular", fill: color-gray, size: 9pt)[
      #smallcaps[#entity-info.name]
      // #entity-info.street-address \
      // #entity-info.city \
    ]
  ]
]

#letter-heading(
  job-position: "",
  addressee: [Hiring Team at #entity-info.name],
)

#show link: underline

#coverletter-content[
  #lorem(200)
]

