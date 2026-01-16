---
description: Create a new blog post with the given title
argument-hint: <title>
---

Create a new blog post using the provided title: $ARGUMENTS

Steps:
1. Generate a URL-friendly slug from the title
2. Create the directory: `posts/<slug>/`
3. Create `posts/<slug>/index.qmd` with proper frontmatter
4. Use today's date for the post date
5. Include placeholder sections for the content

Use the new-blog-post skill for the full template and guidelines.
