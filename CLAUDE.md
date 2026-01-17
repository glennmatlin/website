# Glenn Matlin's Academic Website

This is a Quarto-based academic website for Glenn Matlin, a PhD CS researcher at Georgia Tech.

## Research Identity: RAPID-AI

**Dissertation:** RAPID-AI: Reasoning, Analysis, and Planning for Interactive Decision-Making with Language Models

**Advisors:** Mark Riedl (Associate Director, ML Center) & Sudheer Chava (Chair, Finance)

**Focus:** Language-model systems for interactive, high-stakes decision-making in socio-technical systems (STS)—domains where outcomes depend on both technical facts and human institutions (e.g., finance, government, security, law, medicine).

### Three Pillars
1. **Measurement** — grounded, expert-level evaluations of STS knowledge and reasoning
2. **Training** — SFT and RL methods to improve reasoning, analysis, and planning
3. **Assurance** — transparency, interpretability, and trust calibration

### Research Thrusts (T1-T4)
- **T1 — Grounded STS Evaluation:** authoritative-source corpora → cited QAs and multi-step tasks
- **T2 — Training for Reasoning & Planning:** curated + synthetic data → SFT → RL with structure-aware rewards
- **T3 — Assurance & Interpretability:** cognitive-pattern analysis, mechanistic/behavioral probes, trust calibration
- **T4 — Human-in-the-Loop Interaction:** interfaces that elicit justifications, counterfactuals, and red-teamable plans

### Messaging Guardrails
- **DO** center STS and RAPID-AI
- **DO** say "wargaming is one testbed among several" (not main topic)
- **DO** emphasize measurement → training → assurance
- **DO** claim generalization across domains
- **DO** highlight grounding, citations, OOD, and transparency
- **DON'T** center recruitment or any single testbed
- **DON'T** emphasize pretraining scale
- **DON'T** imply focus on only finance or only security

## Quick Reference

### Common Commands
```bash
quarto preview          # Start dev server at localhost:4000
quarto render           # Build the site to _site/
quarto publish gh-pages # Deploy to GitHub Pages
```

### Project Structure
```
website/
├── _quarto.yml         # Main site configuration
├── index.qmd           # Homepage
├── about.qmd           # About/bio page
├── blog.qmd            # Blog listing page
├── projects.qmd        # Projects listing page
├── publications.qmd    # Publications listing page
├── cv.qmd              # Academic CV
├── posts/              # Blog post directories
├── projects/           # Project page directories
├── publications/       # Publication page directories
├── _data/              # YAML data files (publications, cv)
├── assets/             # Images, PDFs, media
└── styles/             # Custom CSS/SCSS
```

## Content Creation

### Blog Posts
Location: `posts/<slug>/index.qmd`

Required frontmatter:
```yaml
---
title: "Post Title"
author: "Glenn Matlin"
date: YYYY-MM-DD
categories: [category1, category2]
description: "Brief description for previews and SEO"
image: featured.png  # Optional featured image
draft: false
---
```

### Publications
Location: `publications/<slug>/index.qmd` or via `_data/publications.yml`

Required fields:
- title, authors, year, venue
- Optional: doi, pdf, code, slides, abstract

### Projects
Location: `projects/<slug>/index.qmd`

Required frontmatter:
```yaml
---
title: "Project Name"
description: "One-line description"
image: featured.png
categories: [ML, NLP, etc.]
---
```

## Site Configuration

### _quarto.yml Key Sections
- `website.navbar`: Navigation menu items
- `website.page-footer`: Footer content
- `format.html.theme`: Visual theme (cosmo)
- `format.html.css`: Custom stylesheets

### Features Enabled
- Dark mode toggle
- Site-wide search
- RSS feed for blog
- Academic badges on publications
- SEO metadata (Open Graph, Twitter Cards)

## Development Workflow

1. Create/edit content in `.qmd` files
2. Preview locally: `quarto preview`
3. Commit changes to git
4. Push to main - GitHub Actions auto-deploys

## URLs and Links
- Production: https://glennmatlin.com
- GitHub: https://github.com/gmatlin/website
- Contact: glenn@glennmatlin.doctor

## Quarto Documentation
- [Quarto Websites](https://quarto.org/docs/websites/)
- [Quarto Markdown](https://quarto.org/docs/authoring/markdown-basics.html)
- [Quarto Listings](https://quarto.org/docs/websites/website-listings.html)
