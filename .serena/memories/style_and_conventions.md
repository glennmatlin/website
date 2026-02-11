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

## Research Messaging
- Center on RAPID-AI and socio-technical systems (STS)
- Three pillars: Measurement, Training, Assurance
- Wargaming is "one testbed among several"
- Generalize across domains (finance, government, security, law, medicine)
