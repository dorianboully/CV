#import "template.typ": cv, cv-entry, cv-item, cv-section

#show: cv.with(
  name: "Dorian Boully",
  born: "17 mars 2000",
  address: "50 Rue de la Goutte d'Or, 75018, Paris, France",
  phone: "(+33)6 41 68 08 93",
  email: "dorian.boully@polytechnique.edu",
  subtitle: [École Polytechnique (4#super[e] année) — M2 Mathématiques fondamentales IMJ-PRG],
)

// ── Formation académique ───────────────────────────────────────────────────────

#cv-section("Formation académique")

#cv-entry(
  date: "depuis 2024",
  title: "M2 Mathématiques fondamentales",
  org: "IMJ-PRG",
)[
  - En cours : Convergence de spectres, Classes caractéristiques ;
  - Cours validés : Surfaces de Riemann, Topologie algébrique des variétés, Algèbre homologique, Schémas ;
  - Exposé au groupe de travail Géométrie hyperkählérienne sur la conjecture de Calabi.
  - Exposé au séminaire $infinity$-catégories sur les (co)limites ;
]

#cv-entry(
  date: "depuis 2020",
  title: "École Polytechnique",
  org: "Parcours d'approfondissement en mathématiques",
)[
  Projets avec mémoire :
  - Calcul de Malliavin. Supervision : Anne-Sophie de Suzzoni ;
  - Représentations de groupes et équation de Dirac. Supervision : A-S. de Suzzoni et S. Munier ;
  - Trous noirs colorés. Supervision : Cécile Huneau et Lucas Chesnel ;
  - Polynômes lorentziens et conjecture de Mason. Supervision : Omid Amini.
]

#cv-entry(
  date: "2017 – 2020",
  title: "CPGE MPSI/MP",
  org: "Lycée Louis-le-Grand",
)[]

// ── Expériences professionnelles et stages ─────────────────────────────────────

#cv-section("Expériences professionnelles et stages")

#cv-entry(
  date: "février 2026 –",
  title: "Stage de recherche M2",
  org: "IMJ-PRG",
)[
  Topologie des variétés algébriques réelles.\
  Tuteur : Ilia Itenberg.
]

#cv-entry(
  date: "avril – août 2023",
  title: "Stage de recherche (M1/3A de l'X)",
  org: "IMJ-PRG",
)[
  Introduction à la géométrie kählérienne (théorème de Kodaira).\
  Tutrice : Eleonora Di Nezza.
]

#cv-entry(
  date: "2022 – 2024",
  title: "Colleur de mathématiques (MP2I)",
  org: "Lycée Saint-Louis",
)[]

#cv-entry(
  date: "juin – août 2022",
  title: "Stagiaire analyste quantitatif",
  org: "Pointsbet Europe",
  location: "Dublin",
)[
  Modèle de cotation de paris sportifs in-game pour la NFL.
]

#cv-entry(
  date: "déc. 2020 – avr. 2021",
  title: "Stage militaire",
  org: [25#super[e] RGA],
  location: "BA 702, Avord, France",
)[
  Étude de faisabilité pour la qualification des terrains sommaires A400M.
]

// ── Projets personnels ─────────────────────────────────────────────────────────

#cv-section("Projets personnels")

#cv-item(label: "janvier 2026")[
  Rédaction d'une preuve détaillée du théorème d'uniformisation de Riemann.
]

#cv-item(label: "janvier 2026")[
  Rédaction de notes pour le cours Convergences de spectres et notes fondamentales
  de Nalini Anantharaman au Collège de France.
]

// ── Langues & Centres d'intérêt (deux colonnes) ───────────────────────────────

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  [
    #cv-section("Langues")

    - *Français :* langue maternelle
    - *Anglais :* C1 certifié TOEFL
    - *Espagnol :* B2 certifié DELE
  ],
  [
    #cv-section("Centres d'intérêt")

    #cv-item(label: "Sport")[Badminton (niveau national).]
  ],
)
