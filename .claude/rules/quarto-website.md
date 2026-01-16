# Quarto Website Rules

These rules apply when working with `.qmd`, `.md`, and `.yml` files in this website project.

## File Naming Conventions

- Blog posts: `posts/<slug>/index.qmd` where slug is lowercase-with-hyphens
- Projects: `projects/<slug>/index.qmd`
- Publications: `publications/<slug>/index.qmd`
- Featured images: `featured.png` or `featured.jpg` in the same directory

## Frontmatter Requirements

### All Content Pages
Every `.qmd` file MUST have valid YAML frontmatter with at minimum:
- `title`: Descriptive, title case
- `date`: ISO format YYYY-MM-DD

### Blog Posts
Required fields:
```yaml
title: "Title Here"
author: "Glenn Matlin"
date: YYYY-MM-DD
categories: [at least one category]
description: "SEO-friendly description under 160 chars"
```

### Publications
Required fields:
```yaml
title: "Paper Title"
author: ["Author 1", "Author 2"]
date: YYYY-MM-DD
categories: [publication type]
```
Recommended: `doi`, `pdf`, `code`, `venue`, `abstract`

## Code Quality

- Use fenced code blocks with language identifiers (```python, ```bash, etc.)
- Prefer relative links for internal navigation
- Keep line lengths reasonable (< 100 chars for prose)
- Use ATX-style headers (# Header) not underline style

## Images

- Always provide alt text for accessibility
- Use relative paths from the content file
- Optimize images before committing (< 500KB for web)
- Prefer PNG for diagrams, JPG for photos, SVG for icons

## Quarto-Specific

- Use Quarto callouts for notes/warnings: `:::{.callout-note}`
- Use Quarto includes for reusable content: `{{< include _file.qmd >}}`
- Cross-references use `@fig-`, `@tbl-`, `@eq-` prefixes
- Citations use `[@citation-key]` syntax

## Don't

- Don't create files with spaces in names
- Don't use absolute file paths
- Don't commit the `_site/` or `.quarto/` directories
- Don't edit files in `_freeze/` directly
