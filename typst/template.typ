// ── CV template — moderncv « classic » style (burgundy) ─────────────────────

#let burgundy = rgb(139, 0, 0)
#let rule-weight = 0.6pt

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
    align(right, text(size: 9pt, fill: rgb(100,100,100), date)),
    {
      let header-parts = (strong(title),)
      if org != "" { header-parts.push(org) }
      if location != "" { header-parts.push(location) }
      if grade != "" { header-parts.push(grade) }
      text(size: 10pt, header-parts.join(", "))
      if body != [] {
        v(0.15em)
        text(size: 9.5pt, body)
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
    align(right, text(size: 9pt, fill: rgb(100,100,100), label)),
    text(size: 9.5pt, body),
  )
  v(0.2em)
}

// A top-level section heading
#let cv-section(title) = {
  v(0.4em)
  text(size: 13pt, fill: burgundy, weight: "bold", title)
  line(length: 100%, stroke: rule-weight + burgundy)
  v(0.15em)
}

// ── Document template ─────────────────────────────────────────────────────────

#let cv(
  name: "",
  born: "",
  address: "",
  phone: "",
  email: "",
  subtitle: "",
  body,
) = {
  set document(author: name)
  set page(
    paper: "a4",
    margin: (x: 1.8cm, y: 1.5cm),
  )
  set text(font: "Latin Modern Roman", size: 10pt, lang: "fr")
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
      text(size: 9pt,
        stack(
          dir: ttb,
          spacing: 0.35em,
          if born != "" { born } else { none },
          if address != "" { address } else { none },
          if phone != "" { phone } else { none },
          if email != "" { link("mailto:" + email, email) } else { none },
        )
      )
    ),
  )

  line(length: 100%, stroke: 0.8pt + burgundy)
  v(0.2em)

  if subtitle != "" {
    align(center, text(size: 10.5pt, style: "italic", subtitle))
    v(0.5em)
  }

  // ── Body ────────────────────────────────────────────────────────────────────
  body
}
