# SEO and Redirect Plan

## SEO Direction

The legacy WordPress export contains useful URL history, titles, and schema references, but the metadata is mixed with plugin-generated output and oversized keyword lists. The rebuild should use clean, intentional SEO metadata.

## Per-Page SEO Requirements

Each public page should define:

- SEO title
- Meta description
- Canonical URL
- Open Graph title
- Open Graph description
- Open Graph image
- Structured data where relevant

## Product Page SEO Requirements

Each product should include:

- Product name and model
- Category
- Short technical summary
- Applications
- Features
- Image
- Related products
- Downloads
- Legacy URL for redirect tracking

## Redirect Rules

Prepare redirects for:

- Clean legacy product URLs to new product routes
- Duplicate category URLs to consolidated category routes
- Old blog/news URLs to rewritten insight pages, if retained

Do not redirect:

- Wordfence `index-*.htm` export artifacts
- `wp-json` exports
- `xmlrpc.php`
- RSS feed dumps unless RSS is intentionally rebuilt

## Technical SEO Checklist

- Generate sitemap.xml
- Generate robots.txt
- Use one canonical URL per page
- Avoid duplicate category pages
- Keep product slugs stable after launch
- Compress and name images descriptively
- Add alt text for all product and project images
- Validate schema before launch
