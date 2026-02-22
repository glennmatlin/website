# Style and Conventions

## Content Files (.qmd)
- Use YAML frontmatter with title, date, categories, description
- Blog posts at: `post/<slug>/index.qmd`
- Projects at: `project/<slug>/index.qmd`
- Publications at: `publication/<slug>/index.qmd`
- Featured images named `featured.png` or `featured.jpg`
- Use Quarto callouts (:::{.callout-note}) for notes/warnings
- Use ATX-style headers (# Header)
- Keep prose lines < 100 chars

## CSS Conventions
- BEM-ish naming: `.hero-section`, `.feature-card`, `.btn-navy`
- Color palette: Navy (#003087), Gold (#D4AF37), Sky (#0066CC)
- Dark mode variants use `.quarto-dark` prefix
- Transitions on interactive elements (0.2-0.3s ease)

## Code Standards (from global CLAUDE.md)
- Python: use `uv` for packages (never pip/conda/poetry)
- Linting: `ruff`. Type checking: `pyright`. Testing: `pytest`
- Config in `pyproject.toml`
- No em-dashes in writing. Simple punctuation, short sentences.
- Avoid hype words: paradigm, revolutionary, breakthrough, etc.

## Quarto/Pandoc Gotchas
- Raw HTML block elements (`<hr>`, `<div>`, etc.) inside Pandoc fenced divs (`:::`) break div nesting. Use Pandoc-native alternatives (e.g. `::: {.divider-diagonal}` / `:::` instead of `<hr class="divider-diagonal">`).
- For nested fenced divs, use more colons for outer divs (`::::::` for container, `:::` for inner). The closer must match the opener's colon count.
- `section-divs: true` (Quarto default) wraps `##` headings in implicit `<section>` elements, which can strip inline `style` attributes from parent fenced divs. Move such styles to CSS classes instead.
- The homepage (`index.qmd`) uses `page-layout: custom` with a `::::::` container div.

## Research Messaging
- Center on RAPID-AI and socio-technical systems (STS)
- Three pillars: Measurement, Training, Assurance
- Wargaming is "one testbed among several"
- Generalize across domains (finance, government, security, law, medicine)
- Currently a MATS Scholar (mention MATS only, don't name specific labs like OpenAI/DeepMind)
- Research Interests: Reasoning & Planning, Evaluation, AI Safety, AI Policy
