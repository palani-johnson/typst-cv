#import "@preview/modern-cv:0.7.0": *
#import "info.typ": *

#show: resume.with(
  author: author,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
)

= Experience

#resume-entry(
  title: "Software Developer",
  location: if show-location [Remote] else [],
  date: "Apr 2023 - Current",
  description: [Fortune Brands Innovations (parent of Moen)],
  title-link: "https://www.fbin.com/",
)

#resume-item[
  As a member of the FBIN's Emergent Technologies (skunkworks) team and AI/ML team:
  - *Faucet ID:* Designed and implemented a backend system, API, and management frontend using FastAPI for Moen's _Faucet ID_, an image recognition model. Collaborated with a Lead Business Consultant to optimize database architecture, streamline server operations, and migrate processes to Azure Kubernetes Service.
  - *Neighborhood:* built integrations from Fortunes Brands' _Neighborhood_ web component library for Next.js and React applications.
  - *FPG:* Maintained and enhanced Therma-Tru's pricebook generator (_FPG_), focusing on a serverless C\# Azure Function for automated Excel report generation.
]

#resume-entry(
  title: "Application Analyst",
  location: if show-location [Remote] else [],
  date: "Apr 2022 - Apr 2023",
  description: [Moen Faucets],
  title-link: "https://www.moen.com/",
)

#resume-item[
  As a member of the Moen Faucets' IoT Voice and Connected Products team:
  - *Google Voice:* Developed and maintained Moen's Google Voice skill for connected products using TypeScript and Node.js on AWS Lambda.
  - *Smart Faucet:* Maintained a legacy Heroku-hosted voice fulfillment endpoint written in Ruby.
]

#resume-entry(
  title: "Full Stack Developer",
  description: "USU IT",
  location: if show-location [Logan, UT] else [],
  date: "May 2021 - Apr 2022",
  title-link: "https://it.usu.edu/",
)

#resume-item[
  - Collaborated with student programmers to develop and implement web applications for the USU IT department using various technologies.
  - Created a network troubleshooting tool with Flask, jQuery, and MongoDB to perform network tests and assist the USU service desk in diagnosing connectivity issues.
  - Refactored an internal switch management tool built with Django, Celery, jQuery, and PostgreSQL by modernizing the frontend with React and replacing the Celery task queue with Huey and Redis.
]

= Education

#resume-entry(
  title: "B.S. Computer Science",
  location: "Utah State University",
  date: "2016 - 2021",
  description: "Mathematics Minor",
)

#resume-item[
  - Dean's list: Fall 2020, Spring 2021
]

= Skills

#resume-skill-item(
  "Languages",
  (strong("Python"), strong("TypeScript"), "SQL", "C/C++", "Rust"),
)

#resume-skill-item(
  "Backend",
  (strong("FastAPI"), "Django", "Flask", "Node.js", "MongoDB", "PostgreSQL", "MySQL", ".NET"),
)

#resume-skill-item(
  "Frontend",
  (strong("React"), strong("HTMX"), "jQuery"),
)

#resume-skill-item(
  "Data Science",
  ("NumPy", "TensorFlow", "TFLearn", "Keras", "Cuda", "OpenMP"),
)

#resume-skill-item(
  "Other",
  ("Linux", "Git", "Azure", "AWS", "Docker", "K8s", "Nix"),
)

= About Me

#coverletter-content[
  I'm a Software Developer passionate about solving complex problems with elegant, efficient solutions. I have a proven track record of creating lasting solutions in whatever software stack you can throw at me. I love learning new software tools and programming languages. From infrastructure to frontend, I have experience in the entire software stack. I'm a quick learner who strives to write software the right way.
]
