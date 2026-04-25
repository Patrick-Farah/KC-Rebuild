# Klimacontra Website Rebuild

Clean repository for rebuilding the Klimacontra website.

The old `Patrick-Farah/KC` repository should remain as the legacy WordPress/static export reference. This repository is the new working codebase.

## Stack

- Astro
- TypeScript
- Static output
- Structured content collections
- Reusable components and layouts

## Development

```bash
npm install
npm run dev
npm run build
npm run preview
```

## Structure

```text
src/
  components/      Reusable UI components
  content/         Product, project, and news content
  data/            Navigation, company profile, product categories
  layouts/         Shared page layouts
  lib/             SEO and helper functions
  pages/           Website routes
  styles/          Global styles and design tokens
public/
  images/          Brand, product, project, certification images
  documents/       Catalogues, datasheets, certificates
docs/
  sitemap.md       Target sitemap
  content-map.md   Old-to-new content mapping
  migration-plan.md
  seo-plan.md
```

## Current Status

This is a foundation build. It contains starter pages and content models only. The next stage is to migrate useful assets and rewrite the actual website content.

## Next Steps

1. Run the project locally or in GitHub Codespaces.
2. Confirm the starter structure works.
3. Build product category pages.
4. Extract and clean product/project/certification assets from the legacy repository.
5. Rewrite content and SEO metadata.
6. Prepare redirects from old URLs to new URLs.
