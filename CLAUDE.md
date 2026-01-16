# Glenn Matlin's Academic Website

This is a Quarto-based academic website for Glenn Matlin, a PhD student showcasing research, publications, projects, and technical writing.

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
