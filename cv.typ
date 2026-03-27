#import "templates/cv_template.typ": *

#let superscript_asterisk = box(height: 0em, 
  super(baseline: -0.7em)[#text(size: 16pt)[#sym.ast.basic]]
)

#show: cv.with(
  name: "Alex Garrison",
  tagline: "Computer Science with Philosophy student with industry experience in data analytics and AI adoption.",
  email: "alex.garrison.49@gmail.com",
  phone-number: "+44 7534 666982",
  github: "https://github.com/alex-garrison",
  linkedin: "https://www.linkedin.com/in/alex-garrison-aa9b0b2b4",
)

= Education

#experience(
  title: "BSc Computer Science with Philosophy with Year in Industry",
  org: "University of Exeter",
  location: "Exeter",
  date-range: date(datetime(year: 2029, month: 6, day: 1), expected: true),
)[
  Expected #nth(1, sup: true) class degree

  Modules include: Fundamentals of Machine Learning (87%), Programming (70%)
]

#experience(
  title: "A Levels",
  org: "Churcher's College",
  location: "Petersfield",
  date-range: [
    #date(datetime(year: 2022, month: 9, day: 1)) -- #date(datetime(year: 2024, month: 6, day: 1))
  ],
)[
  Computer Science A#superscript_asterisk, Religious Studies A#superscript_asterisk, Mathematics A
]

= Work Experience

#experience(
  title: "Data Analyst",
  org: "discoverIE Group plc",
  location: "Guildford",
  date-range: [
    #date(datetime(year: 2024, month: 9, day: 1)) -- #date(datetime(year: 2025, month: 1, day: 1)), #date(datetime(year: 2025, month: 6, day: 1)) -- #date(datetime(year: 2025, month: 8, day: 1))
  ],
)[
- Collaborated across Group Technology Services, Finance, and M\&A teams to deliver solutions.
- Rapidly self-taught multiple technology frameworks to meet project requirements (low/no-code platforms, Python).
- Built dashboards and internal tooling adopted group-wide, improving reporting workflows and operational visibility.
]

= Projects

*Financial Dashboarding* -- Extended the group's financial reporting from Excel to Power BI, transforming a \~20M row dataset into a responsive data model using PowerQuery, DAX, and features such as composite modelling and performance profiling. Created template reports enabling non-technical analysts to build their own dashboards.

*Post-Acquisition Action Tracker* -- Automated the coordination of post-acquisition integration tasks between Head Office and newly acquired companies, replacing a manual process. Tracked task status with automated reminders and a progress dashboard at multiple levels of granularity. Successfully reused across multiple acquisitions.

*EV Charger Bookings App* -- Created a Power App for booking company EV chargers, replacing a less efficient manual system. Built an accompanying dashboard providing insight into charger usage and adoption.

*Data Collection* -- Developed Microsoft Forms and accompanying reports to streamline data collection group-wide, in areas such as cyber-security, export controls and ESG.

*Cyber-Security Analytics* -- Built deployable API-to-dashboard data pipelines delivering actionable intelligence to stakeholders from technical specialists to board members, covering web/endpoint security, user training, and phishing campaigns.

*Private AI service* -- Designed and deployed a fully-local AI service enabling ChatGPT-like interaction with sensitive data. Advocacy for open-source technologies substantially reduced potential OpEx.

All projects were fully documented for successful knowledge transfer.

= Extracurricular

#experience(
  title: "Security Council Delegate",
  org: "Paris International Model United Nations",
  location: "Paris",
  date-range: [
    #date(datetime(year: 2023, month: 6, day: 1))
  ],
)[
- Represented the Sri Lankan delegation for the multilingual UN Security Council.
- Authored position paper and contributed to final resolution.
]

#experience(
  title: [Assistant Treasurer #text(style: "italic", weight: "light")[(upcoming)]],
  org: "Exeter University Rifle Club",
  location: "Exeter",
  date-range: [
    #date(datetime(year: 2026, month: 9, day: 1)) -- #date(datetime(year: 2027, month: 9, day: 1), expected: true)
  ],
)[
Elected Assistant Treasurer for academic year 2026/27.
]

#state("section-note").update([Proficiencies are highlighted in *bold*])
= Skills

#skill-entry(skill-name: "Programming")[
  *Python*, APIs, Java, SQL, Jupyter, Git
]

#skill-entry(skill-name: "Microsoft Ecosystem")[
  *Excel* (PowerQuery), *Forms*, *SharePoint* (Lists, Sites)
]

#skill-entry(skill-name: "Microsoft Power Platform")[
  *Power BI*, Power Apps, Power Automate
]

#skill-entry(skill-name: "AI Frameworks")[
  *OpenAI*, Microsoft (Copilot, Copilot Studio)
]