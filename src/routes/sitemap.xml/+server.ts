import { site } from '$lib/content/site';

export const prerender = true;

export const GET = () => {
  const paths = [
    '/',
    ...site.projects.map(({ slug }) => `/work/${slug}/`),
    ...site.archive.map(({ slug }) => `/archive/${slug}/`),
  ];
  const urls = paths.map((path) => `  <url>\n    <loc>${site.meta.url}${path}</loc>\n  </url>`).join('\n');
  return new Response(
    `<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n${urls}\n</urlset>\n`,
    { headers: { 'Content-Type': 'application/xml' } }
  );
};
