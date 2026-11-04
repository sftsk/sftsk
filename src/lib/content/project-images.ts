import type { Picture } from '@sveltejs/enhanced-img';

// Drop files into src/lib/assets/projects/<slug>/: cover.*, icon.png, plus 1.*, 2.*, ... for the case page.
const images = import.meta.glob<Picture>('/src/lib/assets/projects/*/*.{png,jpg,jpeg,webp}', {
  eager: true,
  import: 'default',
  query: { enhanced: true },
});

const forProject = (slug: string) =>
  Object.entries(images)
    .filter(([path]) => path.split('/').at(-2) === slug)
    .sort(([a], [b]) => a.localeCompare(b, 'en', { numeric: true }));

const named = (slug: string, name: string) =>
  forProject(slug).find(([path]) => path.split('/').at(-1)?.startsWith(`${name}.`))?.[1];

export const projectCover = (slug: string) => named(slug, 'cover');

export const projectIcon = (slug: string) => named(slug, 'icon');

export const projectGallery = (slug: string) =>
  forProject(slug)
    .filter(([path]) => /\/\d+\.\w+$/.test(path))
    .map(([, image]) => image);
