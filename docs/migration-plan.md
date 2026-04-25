# Migration Plan

## Objective

Move from a copied WordPress static export to a clean, structured, maintainable website repository.

## Legacy Source

The current `Patrick-Farah/KC` repository contains a WordPress mirror/export. It includes rendered HTML pages, WordPress plugin assets, API dumps, RSS feeds, and duplicate Wordfence-generated files.

## Migration Phases

### Phase 1 — Preserve Legacy

- Keep the existing export available for reference.
- Do not continue development directly on exported HTML files.
- Treat legacy pages as content and asset sources only.

### Phase 2 — Inventory

Create a content map covering:

- Legacy URL
- Existing file path
- Page type
- Keep / rewrite / delete decision
- New URL
- Redirect requirement
- Notes

### Phase 3 — Extract Assets

Retain only approved assets:

- Brand logos
- Product images
- Project images
- Certification logos and certificates
- Catalogues and datasheets

Do not migrate:

- WordPress plugin assets
- WordPress theme files
- RSS feed exports
- `wp-json` dumps
- `xmlrpc.php`
- Wordfence duplicate `index-*.htm` files

### Phase 4 — Rebuild Content

Rewrite and structure:

- Home
- About
- Products
- Product detail pages
- Solutions
- Projects
- Certifications
- Downloads
- Contact

### Phase 5 — Redirects and SEO

Create redirects from old URLs to new URLs. Preserve URLs only where they are clean, valuable, and already indexed.

### Phase 6 — Launch Readiness

Before launch:

- Build passes with no errors.
- Sitemap reviewed.
- SEO metadata complete.
- Redirects tested.
- Contact forms tested.
- Images compressed.
- Accessibility and responsive checks completed.
