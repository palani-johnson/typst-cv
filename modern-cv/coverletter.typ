#import "@preview/modern-cv:0.7.0": *
#import "info.typ": *

#show: coverletter.with(
  author: author,
  profile-picture: none,
  language: "en",
)

#hiring-entity-info(
  entity-info: (
    target: "Company Recruitement Team",
    name: "Google, Inc.",
    street-address: "1600 AMPHITHEATRE PARKWAY",
    city: "MOUNTAIN VIEW, CA 94043",
  ),
)

#letter-heading(
  job-position: "Software Engineer",
  addressee: "Sir or Madame",
)

#coverletter-content[
  #lorem(100)
]

#coverletter-content[
  #lorem(90)
]

#coverletter-content[
  #lorem(110)
]
