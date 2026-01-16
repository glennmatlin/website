---
description: Deploy the website to GitHub Pages
---

Deploy the website to GitHub Pages:

```bash
cd /Users/glenn/codespace/website && quarto publish gh-pages --no-prompt
```

This will:
1. Render the site
2. Push to the gh-pages branch
3. GitHub Pages will serve the updated site

After deployment, the site will be live at https://glennmatlin.com

Note: Ensure all changes are committed before deploying.
