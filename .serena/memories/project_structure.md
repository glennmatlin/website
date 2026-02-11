# Project Structure

```
website/
├── _quarto.yml           # Main site config (navbar, footer, theme, format)
├── index.qmd             # Homepage with hero section
├── about.qmd             # About/bio page
├── blog.qmd              # Blog listing page
├── research.qmd          # Research page
├── projects.qmd          # Projects listing page
├── publications.qmd      # Publications listing page
├── cv.qmd                # Academic CV
├── 404.qmd               # Custom 404 page
├── post/                 # Blog post directories (post/<slug>/index.qmd)
├── project/              # Project page directories
├── publication/          # Publication page directories
├── kb/ / knowledgebase/  # Knowledge base content
├── authors/              # Author profiles
├── _includes/            # Reusable includes
├── _data/                # YAML data files (not present at top-level, may be in subdirs)
├── assets/               # Images, PDFs, media
├── styles/               # Custom CSS (custom.css)
├── docs/                 # Documentation
├── _freeze/              # Quarto freeze directory (computed outputs)
├── _footer.html          # Custom footer HTML
├── _meta.html            # Custom meta HTML
├── CLAUDE.md             # AI assistant instructions
├── pyproject.toml        # Python project config
└── .editorconfig         # Editor settings
```

Note: Content directories use singular names (post/, project/, publication/) rather than the plural names in CLAUDE.md.
