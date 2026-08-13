// Sunbeam Studios — Pitch Deck
// Requires: Ysabeau Infant (static instances at weights 431/575/647/791)
//           Monaspace Argon (static OTFs)
// Install fonts to your system font directory, then run:
//   typst compile pitch.typ

#import "lib.typ": *

#show: beam-slides.with(
  title: "Sunbeam Platform",
  author: "Sunbeam Studios",
)

#title-slide(
  "Sunbeam Platform",
  subtitle: "Post-U.S. Global Infrastructure Solutions",
  author: "Sunbeam Studios",
)

#columns-slide("The Three Problems")[
  == Availability
  Data flows through U.S. infrastructure you don't control, subject to laws not written with your interests in mind.
][
  == Vulnerability
  U.S.-headquartered players have legal access to your data held by U.S. companies anywhere in the world.
][
  == Affordability
  Over \$20,000/yr for required network security you need to pay for by U.S. companies.
]

#focus-slide(tone: "accent")[
  #text(size: slide-size-2xl)[The United States controls 70% of the global internet]
]

#split-slide("Why Now?")[
  - European Parliament voted 471–68 to reduce reliance on foreign technology
  - NIS2 in force — must demonstrate verifiably effective security
][
  - Cyber Resilience Act phases in through 2027
  - Sovereign cloud spending projected to triple to \$23 billion by 2027
]

#team-slide(
  "Team",
  team-member(
    "Sienna Meridian Satterwhite",
    "Studio Head & Chief Engineer",
    [],
    avatar: avatar-placeholder("SM"),
  ),
  team-member(
    "Lonneke Faber",
    "Head of Production",
    [],
    avatar: avatar-placeholder("LF"),
  ),
  team-member(
    "Tony McKenzie",
    "Head of Engineering",
    [],
    avatar: avatar-placeholder("TM"),
  ),
)

#section-slide("Sunbeam Proxy")

#split-slide(
  "Sunbeam Proxy",
  ratio: (2fr, 3fr),
)[
  == The security proxy that proves itself.

  Most tools work from a list of known threats. If an attack isn't on the list, it gets through.

  Sunbeam Proxy learns what normal traffic looks like for your server and flags anything that doesn't fit — stopping threats no rulebook has seen before.
][
  #rect(width: 100%, height: 80%, fill: bg-card, stroke: border-default)[
    #set align(center + horizon)
    #text(fill: text-muted)[Proxy architecture diagram]
  ]
]

#focus-slide(tone: "primary")[
  #text(size: slide-size-xl)[Every other security product says "trust us, it works."] \
  #v(1em)
  #text(size: slide-size-2xl, weight: 791)[Sunbeam Proxy proves that it does.]
]

#content-slide("How It Works")[
  1. *DDoS Detection* — machine learning monitors IP behaviour to spot flooding, abnormal rates, or coordinated attacks
  2. *Scanner Detection* — machine learningexamines requests for automated probing or access to vulnerable paths
  3. *Cloud-Native* — integrates natively through Kubernetes Gateway API or Envoy xDS

  #v(1em)
  Each layer uses a compact ML model under 4 KB, deciding in under 6 nanoseconds.
]

#rows-slide("Four Guarantees")[
  == Liveness
  The models never fail to return a verdict.
][
  == Stability
  Attackers cannot game the models.
][
  == Hardware-faithful
  Account for processor rounding and numeric behaviour.
][
  == Verifiable
  No adversarial perturbation can change the verdict.
]

#split-slide(
  "The Market",
  ratio: (2fr, 3fr),
)[
  EU sovereign infrastructure: *\$23 billion by 2027*.

  No credible open-source Cloudflare alternative for Europe. Incumbents are US-controlled, closed-source, or lack formal verification.

  That structural gap creates a durable opening.
][
  #table(
    columns: (1fr, 1fr),
    inset: 10pt,
    align: horizon,
    table.header([*Provider*], [*Monthly Cost*]),
    [Sunbeam Proxy], [\€1,250],
    [AWS Shield Advanced], [\€2,800],
    [Azure DDoS Protection], [\€2,750],
  )
]

#columns-slide("The Studio's Self-Hosted Stack")[
  == WFE
  Persistent, embeddable workflow engine for Rust. Saga compensation, event-driven pausing, distributed locking. Code or YAML definitions.
][
  == Sol
  Multiplayer AI agent for Matrix. Group chats with team context, DMs with per-user memory, dedicated coding agent. Self-hosted. E2E encrypted.
][
  == CesiumDB
  Rust-native LSM-tree store. 646,000 writes/second. Bloom filter lookups at 860 picoseconds. Namespaces, HLC versioning, background compaction.
]

#content-slide("Business Model")[
  All products are open source. Core software is free to deploy indefinitely.

  Sunbeam Proxy free tier = the full product:
  - Full ML threat detection
  - Formal verification
  - CROWN certification
  - Up to 1 Gbps at no cost

  Paid offerings target scale, managed operations, support, and compliance.
]

#columns-slide("Three Revenue Streams")[
  == Self-hosted Licensing
  Same binary, higher bandwidth caps.

  Gross margin: 88–92%
][
  == Managed Service
  Sunbeam operates on EU-sovereign infrastructure via Scaleway co-location.

  Gross margin: 65–70%
][
  == Enterprise Support
  Formal verification artefacts, CROWN methodology, deployment assistance, NIS2 and Cyber Resilience Act compliance materials.
]

#content-slide("Financial Projections")[
  #table(
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: horizon,
    table.header([*Phase*], [*ARR Target*], [*Year*], [*ARR*]),
    [Phase 1], [\€9K–15K], [Year 1], [€1M–€2M],
    [Phase 2], [\€66K–123K], [Year 2], [€3M–€5M],
    [Phase 3], [\€180K–300K], [Year 3], [€8M–€15M],
  )

  #v(1em)
  *Key Milestones:*
  - Phase 1: Open-source launch, CNCF Sandbox, training data resolved
  - Phase 2: First Enterprise customers, managed beta, EU grants
  - Phase 3: Series A ready, 400–800 Gbps benchmark, 100+ deployments
]

#content-slide("Commercialisation")[
  Sunbeam Proxy is our commercial product.

  WFE and CesiumDB are open source forever — free to use, no commercial layer planned.

  Sol is open source today. Commercial licensing will be formalised as the product matures.
]

#closing-slide(
  "Sunbeam Studios aspires to create beauty, to create community, and to insoure the world",
  subtitle: "sunbeam.pt · hello@sunbeam.pt · github.com/sunbeamdotpt",
)
