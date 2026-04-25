# Asset Migration Guide

This guide explains how selected assets from the legacy `Patrick-Farah/KC` repository should move into the clean `KC-Rebuild` repository.

## Principle

Do not copy the full old repository into the rebuild. Only migrate useful brand, product, project, certification, catalogue, and document assets.

## Useful Asset Destinations

| Asset Type | New Location |
|---|---|
| Logo / favicon / brand marks | `public/images/brand/` |
| Product images | `public/images/products/` |
| Project images | `public/images/projects/` |
| Certification images | `public/images/certifications/` |
| Catalogues / brochures | `public/documents/catalogues/` |
| Certificates / approvals | `public/documents/certificates/` |

## Do Not Migrate

- `wp-content/themes/`
- `wp-content/plugins/`
- `wp-json/`
- `feed/`
- `comments/feed/`
- `xmlrpc.php`
- `index-*.htm` Wordfence/export artifacts
- Old generated HTML page shells

## Initial Migration Script

A starter migration script is available at:

```bash
scripts/migrate-legacy-assets.sh
```

Run it from the root of `KC-Rebuild`:

```bash
chmod +x scripts/migrate-legacy-assets.sh
./scripts/migrate-legacy-assets.sh
```

Then review copied files:

```bash
git status
```

If the copied files look correct, commit them:

```bash
git add public/images public/documents
git commit -m "Migrate selected legacy brand and media assets"
git push
```

## Next Asset Pass

After the first migration, inspect the legacy repository for:

- Product images by product family
- Project images by market/sector
- Certification and approval logos
- Company brochures and PDF catalogues

Each migrated asset should be renamed clearly before final use.
