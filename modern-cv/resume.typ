#import "@preview/modern-cv:0.7.0": *

#show: resume.with(
  author: (
    firstname: "Palani",
    lastname: "Johnson",
    email: "palanijohnson@gmail.com",
    // homepage: "https://example.com",

    phone: "702-279-0982",
    github: "palani-johnson",
    linkedin: "palani-johnson",

    address: "1326 e 900 s, Salt Lake City, UT 84105",
    positions: (
      "Software Engineer",
      "Software Architect",
      "Developer",
    ),
  ),
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
)

= Experience

#resume-entry(
  title: "Senior Software Engineer",
  location: "Example City, EX",
  date: "2019 - Present",
  description: "Example, Inc.",
  title-link: "https://github.com/DeveloperPaul123",
)

#resume-item[
  - #lorem(20)
  - #lorem(15)
  - #lorem(25)
]

#resume-entry(
  title: "Software Engineer",
  location: "Example City, EX",
  date: "2011 - 2019",
  description: "Previous Company, Inc.",
)

#resume-item[
  // content doesn't have to be bullet points
  #lorem(72)
]

#resume-entry(
  title: "Intern",
  location: "Example City, EX",
)

#resume-item[
  - #lorem(20)
  - #lorem(15)
  - #lorem(25)
]

= Projects

#resume-entry(
  title: "Thread Pool C++ Library",
  location: [#github-link("DeveloperPaul123/thread-pool")],
  date: "May 2021 - Present",
  description: "Designer/Developer",
)

#resume-item[
  - Designed and implemented a thread pool library in C++ using the latest C++20 and C++23 features.
  - Wrote extensive documentation and unit tests for the library and published it on Github.
]

#resume-entry(
  title: "Event Bus C++ Library",
  location: github-link("DeveloperPaul123/eventbus"),
  date: "Sep. 2019 - Present",
  description: "Designer/Developer",
)

#resume-item[
  - Designed and implemented an event bus library using C++17.
  - Wrote detailed documentation and unit tests for the library and published it on Github.
]

= Skills

#resume-skill-item(
  "Languages",
  (strong("C++"), strong("Python"), "Java", "C#", "JavaScript", "TypeScript"),
)
#resume-skill-item("Spoken Languages", (strong("English"), "Spanish"))
#resume-skill-item(
  "Programs",
  (strong("Excel"), "Word", "Powerpoint", "Visual Studio"),
)

= Education

#resume-entry(
  title: "Example University",
  location: "Example City, EX",
  date: "August 2014 - May 2019",
  description: "B.S. in Computer Science",
)

#resume-item[
  - #lorem(20)
  - #lorem(15)
  - #lorem(25)
]
