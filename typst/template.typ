// ── CV template — moderncv « classic » style (burgundy) ─────────────────────

#let burgundy = rgb(139, 0, 0)
#let rule-weight = 0.6pt
#let body-size = 11pt
#let dates-size = 10pt

// ── Public helpers ────────────────────────────────────────────────────────────

// One entry in a section (date | title, organisation, location, description)
#let cv-entry(
  date: "",
  title: "",
  org: "",
  location: "",
  grade: "",
  body,
) = {
  grid(
    columns: (3.5cm, 1fr),
    column-gutter: 0.6em,
    align(right, text(size: dates-size, fill: rgb(100,100,100), date)),
    {
      let header-parts = (strong(title),)
      if org != "" { header-parts.push(org) }
      if location != "" { header-parts.push(location) }
      if grade != "" { header-parts.push(grade) }
      text(size: body-size, header-parts.join(", "))
      if body != [] {
        text(size: body-size, body)
      }
    },
  )
  v(0.2em)
}

// A short labelled item (label | description)
#let cv-item(label: "", body) = {
  grid(
    columns: (3.5cm, 1fr),
    column-gutter: 0.6em,
    align(right, text(size: dates-size, fill: rgb(100,100,100), label)),
    text(size: body-size, body),
  )
}

// A top-level section heading
#let cv-section(title) = {
  text(size: 13pt, fill: burgundy, weight: "bold", title)
  v(-.5em)
  line(length: 100%, stroke: rule-weight + burgundy)
}

// ── Document template ─────────────────────────────────────────────────────────

#let cv(
  name: "",
  born: "",
  address: "",
  phone: "",
  email: "",
  webpage: "",
  subtitle: "",
  body,
) = {
  set document(author: name)
  set page(
    paper: "a4",
    margin: (x: 1.8cm, y: 1.5cm),
  )
  set text(size: body-size, lang: "fr")
  set par(justify: true, leading: 0.55em)

  // ── Header ──────────────────────────────────────────────────────────────────
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    // Name (left)
    align(bottom,
      text(size: 24pt, weight: "bold", fill: black, name)
    ),
    // Contact info (right)
    align(right,
      text(size: dates-size,
        stack(
          dir: ttb,
          spacing: 0.35em,
          if born != "" { born } else { none },
          if address != "" { address } else { none },
          if phone != "" { phone } else { none },
          if email != "" { link("mailto:" + email, email) } else { none },
          if webpage != "" { link(webpage, "Page perso (notes des projets disponibles)") } else { none },
        )
      )
    ),
  )

  // line(length: 100%, stroke: 0.8pt + burgundy)
  v(1.2em)

  if subtitle != "" {
    align(center, text(size: 13pt, style: "italic", subtitle))
    v(0.5em)
  }

  // ── Body ────────────────────────────────────────────────────────────────────
  body
}
