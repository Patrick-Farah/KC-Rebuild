import { defineCollection, z } from 'astro:content';

const products = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    model: z.string().optional(),
    category: z.string(),
    summary: z.string(),
    image: z.string().optional(),
    applications: z.array(z.string()).default([]),
    features: z.array(z.string()).default([]),
    downloads: z.array(z.string()).default([]),
    legacyUrl: z.string().optional(),
    draft: z.boolean().default(true)
  })
});

const projects = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    location: z.string().optional(),
    sector: z.string(),
    year: z.number().optional(),
    summary: z.string(),
    image: z.string().optional(),
    products: z.array(z.string()).default([]),
    draft: z.boolean().default(true)
  })
});

const news = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    publishDate: z.date(),
    summary: z.string(),
    image: z.string().optional(),
    draft: z.boolean().default(true)
  })
});

export const collections = { products, projects, news };
