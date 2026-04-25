# Content Map

Use this table to decide how each legacy page should migrate into the new structure.

| Legacy URL | Legacy File | Type | Decision | New URL | Redirect | Notes |
|---|---|---:|---:|---|---:|---|
| `/` | `index.htm` | Home | Rewrite | `/` | No | Rebuild from scratch using useful legacy positioning only. |
| `/about/` | `about/index.htm` | Company | Rewrite | `/about/` | No | Rewrite company story, capabilities, quality and facilities. |
| `/products/linear-slot-diffuser/` | `products/linear-slot-diffuser/index.htm` | Product | Rewrite | `/products/air-outlets/linear-slot-diffuser-kc-lsd/` | Yes | Sample product content record created. |
| `/diffusers/` | `diffusers/index.htm` | Category | Merge | `/products/air-outlets/diffusers/` | Yes | Consolidate with duplicate diffusers paths. |
| `/diffusers-2/` | `diffusers-2/index.htm` | Category Duplicate | Delete/Merge | `/products/air-outlets/diffusers/` | Yes | Duplicate legacy category. |
| `/?wordfence_syncAttackData=*` | `index-*.htm` | Export Artifact | Delete | N/A | No | Do not migrate. |
| `/wp-json/*` | `wp-json/*` | API Export | Delete | N/A | No | Do not migrate. |
| `/feed/` | `feed/index.htm` | RSS Export | Delete | N/A | Optional | Recreate RSS only if blog/news needs it. |

## Decisions

- **Keep** means migrate with minimal changes.
- **Rewrite** means preserve intent but replace copy, layout, and structure.
- **Merge** means consolidate duplicate pages into one final route.
- **Delete** means do not migrate.
