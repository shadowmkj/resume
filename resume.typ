#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.3cm),
)

#set text(
  font: ("Helvetica Neue", "Helvetica", "Arial"),
  size: 9.5pt,
  fill: rgb("#111827"),
)

#set par(justify: false, leading: 0.55em)
#set list(spacing: 0.45em, marker: [•])

// Understated link styling: dark charcoal with subtle underline
#show link: it => underline(stroke: 0.5pt + rgb("#6b7280"), text(fill: rgb("#111827"), it))

// Semantic headings
#show heading.where(level: 1): it => align(center)[
  #text(size: 20pt, weight: "bold", fill: rgb("#0f172a"))[#it.body]
  #v(0.15em)
]

#show heading.where(level: 2): it => [
  #v(0.8em)
  #text(size: 11pt, weight: "bold", fill: rgb("#0f172a"))[#upper(it.body)]
  #v(-0.45em)
  #line(length: 100%, stroke: 0.6pt + rgb("#cbd5e1"))
  #v(0.25em)
]

// Unbreakable entry block for jobs, projects, and education
#let item(
  title,
  subtitle: none,
  date: none,
  links: none,
  tech: none,
  body,
) = block(breakable: false)[
  #v(0.3em)
  #grid(
    columns: (1fr, auto),
    align: (left, right),
    [
      #text(weight: "bold", size: 10pt)[#title]
      #if subtitle != none [ | #text(style: "normal")[#subtitle] ]
    ],
    [
      #if links != none [ #links ]
      #if links != none and date != none [ | ]
      #if date != none [ #text(fill: rgb("#4b5563"))[#date] ]
    ],
  )
  #if tech != none [
    #v(-0.2em)
    #text(size: 8.8pt, fill: rgb("#4b5563"))[*Tech Stack:* #tech]
  ]
  #v(-0.1em)
  #body
]

// -----------------------------------------------------------------------------
// Header
// -----------------------------------------------------------------------------
= Milan Pramod

#align(center)[
  #text(size: 9pt, fill: rgb("#374151"))[
    +91 79027 08908
    #h(0.4em)•#h(0.4em)
    #link("mailto:milanpramod123@gmail.com")[milanpramod99\@gmail.com]
    #h(0.4em)•#h(0.4em)
    #link("https://github.com/shadowmkj")[github.com/shadowmkj]
    #h(0.4em)•#h(0.4em)
    #link("https://www.linkedin.com/in/milanpramod/")[linkedin.com/in/milanpramod]
  ]
]
#v(0.1em)

// -----------------------------------------------------------------------------
// Summary
// -----------------------------------------------------------------------------
== Summary
Full-Stack Engineer and CS Undergraduate with 5+ years of software development experience building production-ready SaaS applications and high-concurrency systems. Proficient across Next.js, Node.js, and TypeScript, with active hands-on experience building low-level systems in Rust and AI applications using RAG architecture.

// -----------------------------------------------------------------------------
// Technical Skills
// -----------------------------------------------------------------------------
== Technical Skills
#grid(
  columns: (auto, 1fr),
  column-gutter: 0.6em,
  row-gutter: 0.4em,
  [*Languages:*], [Rust, TypeScript, JavaScript, Go, Python, PHP, Dart],
  [*Frontend:*], [React, Next.js, Tailwind CSS],
  [*Backend & Databases:*], [Node.js, Express.js, Laravel],
  [*Tools & Core Concepts:*],
  [Git, Docker, REST APIs, RAG (Retrieval-Augmented Generation), Authentication (OAuth/JWT)],
)

// -----------------------------------------------------------------------------
// Experience
// -----------------------------------------------------------------------------
== Experience

#item(
  "Freelance Full Stack Developer",
  subtitle: "Independent",
  date: "2021 – Present",
)[
  - Architected and deployed end-to-end web applications for multiple clients, maintaining high uptime and optimizing core web vitals.
  - Managed search engine presence, technical SEO, and content indexing for a specialized security equipment platform, improving search visibility and organic discovery.
  - Engineered secure RESTful APIs and authentication systems handling concurrent multi-tenant database requests.
  - Delivered production-ready SaaS applications with a focus on performance, scalability, and maintainable codebases.
]

// -----------------------------------------------------------------------------
// Projects
// -----------------------------------------------------------------------------
== Projects

#item(
  "leetrs",
  subtitle: "Terminal LeetCode CLI & TUI Engine (93 Stars)",
  links: link("https://github.com/shadowmkj/leetrs")[GitHub],
  tech: [Rust, GraphQL],
)[
  - Built an interactive terminal-based LeetCode workspace with instant fuzzy search, difficulty/tag filtering, and native Neovim split integration.
  - Implemented automated cross-browser cookie extraction across Chromium and Gecko browsers for zero-friction authentication.
  - Developed an asynchronous test runner and solution submission pipeline providing real-time runtime and memory performance benchmarks.
]

#item(
  "Ratatui",
  subtitle: "Terminal UI Library in Rust (23k+ Stars)",
  links: [
    #link("https://github.com/ratatui/ratatui")[GitHub] | #link("https://github.com/ratatui/ratatui/pull/2725")[Pull Request]
  ],
  tech: [Rust],
)[
  - Contributed to the core Ratatui library (over 23k stars), adding `Marker` support (Braille, Octant, HalfBlock, Quadrant) to the `Sparkline` widget.
  - Engineered 2-column pseudo-pixel rendering to double horizontal data density while maintaining 100% backward compatibility and test coverage.
]

#item(
  "Botify",
  subtitle: "WhatsApp Messaging Automation Platform",
  links: link("https://github.com/shadowmkj/botify")[GitHub],
  tech: [TypeScript, Node.js, BullMQ, Redis],
)[
  - Engineered a concurrent WhatsApp workflow automation engine to streamline business communication.
  - Implemented event-driven message queues to process outbound and inbound messages reliably without rate-limit throttling.
  - Designed the system architecture for high availability and scalability across multiple concurrent sessions.
]

#item(
  "Restaurant Ordering & SaaS Platform",
  subtitle: none,
  tech: [VueJS, Laravel, Tailwind CSS],
)[
  - Architected a multi-tenant SaaS platform serving restaurant management, featuring isolated tenant data and dynamic routing.
  - Developed a complete restaurant ordering solution including administration, business management features, and real-time order tracking.
]

#item(
  "SyllabiQ",
  subtitle: "Academic Chat Assistant",
  links: link("https://github.com/shadowmkj/syllabiq")[GitHub],
  tech: [Python, RAG, Vector Database, LLMs],
)[
  - Built an AI-powered academic assistant leveraging Retrieval-Augmented Generation (RAG) to provide contextual answers to syllabus-based questions.
  - Optimized document chunking strategies and implemented a semantic retrieval pipeline for accurate long-form academic document parsing.
]

// -----------------------------------------------------------------------------
// Education
// -----------------------------------------------------------------------------
== Education

#item(
  "Bachelor of Technology (B.Tech), Computer Science and Engineering",
  subtitle: "Government College of Engineering Kannur",
  date: "2023 – 2027",
)[
  - *Development & Extracurriculars:* Vice Chair at WeCode GCEK
]

