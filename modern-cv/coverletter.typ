#import "@preview/modern-cv:0.7.0": *
#import "info.typ": *

#let date = datetime.today().display("[month repr:long] [day], [year]")

#let entity-info = (
  team: "Company Recruitment Team",
  name: "Goldman Sachs",
  street-address: "222 S Main St",
  city: "Salt Lake City, UT 84101",
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
      #entity-info.street-address \
      #entity-info.city \
    ]
  ]
]

#letter-heading(
  job-position: "",
  addressee: [Hiring Team at #entity-info.name],
)

#show link: underline

#coverletter-content[
  I am excited to apply for the Full Stack Software Engineer role at Goldman Sachs. With a strong background in full-stack development and experience designing scalable, efficient solutions, I am eager to be a part of Goldman Sachs' Listed Clearing Engineering team.
]

#coverletter-content[
  In my current role at Fortune Brands Innovations, I have proven my ability to deliver innovative solutions that drive business growth with my unique set of skills:

  - *On the AI/ML team I redesigned* the backend infrastructure for Moen's Faucet ID image recognition model, optimizing database architecture and migrating processes to Azure Kubernetes Service. This service is used by the consumer support team to rapidly identify faucets from images, reducing call time by 1-5 minutes per call. Additionally, this service is now more modular and scalable, allowing for easier updates and adaptations for future business needs.
  - *On the Emergent Technology Team I enhanced* and maintained Therma-Tru's pricebook generator (FPG) by building serverless C\# Azure Functions for automated Excel price report generation. This tool is used by the sales team to generate custom pricebooks for clients, supporting over 100,000 unique options.
]

#coverletter-content[
  I am confident that my experience and skills make me a strong candidate for this role. I am excited about the
  opportunity to contribute to Goldman Sachs' mission and am eager to bring my expertise to the team. I look forward to the
  opportunity to discuss my application with you further.
]

