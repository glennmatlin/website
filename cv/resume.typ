// resume.typ — One-page resume variant
// Reads the same template.yml as the full CV but applies the "resume" profile
// to filter sections and limit entries.
//
// Build:  typst compile resume.typ glenn-matlin-resume.pdf

#import "@preview/academicv:1.0.0": *

// ── Data ──────────────────────────────────────────────────────────
#let cv-data = yaml("data.yml")
#let profile-sections = cv-data.profiles.resume.sections

// ── Resume-specific formatting (US Letter, tight margins) ────────
#let settings = (
  font-heading: "Libertinus Serif",
  font-body: "Libertinus Serif",
  fontsize: 8.5pt,
  spacing-section: 6pt,
  spacing-entry: 0.05em,
  spacing-element: 2pt,
  spacing-line: 2pt,
  color-hyperlink: rgb(50, 120, 180),
)

#let customrules(doc) = {
  set page(
    paper: "us-letter",
    margin: (x: 1cm, top: 0.75cm, bottom: 0.25cm),
  )
  show link: it => {
    text(fill: rgb(50, 120, 180))[#it]
  }
  doc
}

#let cvinit(doc) = {
  doc = setrules(settings, doc)
  doc = showrules(settings, doc)
  doc = customrules(doc)
  doc
}

#show: doc => cvinit(doc)

// ── Build a lookup from section key → section data ───────────────
#let section-lookup = (:)
#if "sections" in cv-data {
  for section in cv-data.sections {
    section-lookup.insert(section.key, section)
  }
}

// ── Render sections in profile-specified order ───────────────────
#let profile = cv-data.profiles.resume
#let render-order = profile.at("order", default: section-lookup.keys())
#for key in render-order {
  if key not in profile-sections { continue }
  if key not in section-lookup { continue }
  let section = section-lookup.at(key)
  let prof = profile-sections.at(key)

    if prof.at("show", default: false) {
      if key == "personal" {
        layout-header(cv-data, settings)
      } else {
        let layout = section.layout
        let title = section.title

        // Get the full section data
        let section-data = get-section-data(section, cv-data)

        // Apply entry limit if specified in the profile
        let entries = section-data.entries
        if "limit" in prof {
          entries = entries.slice(0, calc.min(prof.limit, entries.len()))
        }

        // description-limit: strip descriptions from entries beyond the limit
        let desc-limit = prof.at("description-limit", default: none)
        let hide-desc = prof.at("hide-description", default: false)
        let hide-sec = prof.at("hide-secondary", default: false)

        if desc-limit != none {
          // Strip description from entries past the limit
          let processed = ()
          for (i, entry) in entries.enumerate() {
            if i >= desc-limit and type(entry) == dictionary {
              let stripped = (:)
              for (k, v) in entry {
                if k != "description" { stripped.insert(k, v) }
              }
              processed.push(stripped)
            } else {
              processed.push(entry)
            }
          }
          entries = processed
        }

        // Build temp data dict for the renderer
        let temp-data = (personal: cv-data.personal, (key): entries)
        if "primary-element" in section-data { temp-data.insert("primary-element", section-data.primary-element) }
        if "secondary-element" in section-data and not hide-sec { temp-data.insert("secondary-element", section-data.secondary-element) }
        if "tertiary-element" in section-data and not hide-desc and desc-limit == none {
          temp-data.insert("tertiary-element", section-data.tertiary-element)
        }
        if desc-limit != none and "tertiary-element" in section-data {
          temp-data.insert("tertiary-element", section-data.tertiary-element)
        }
        cvsection(temp-data, layout: layout, section: key, settings: settings, title: title)
      }
    }
}
