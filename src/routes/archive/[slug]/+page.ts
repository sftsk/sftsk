import { error } from '@sveltejs/kit';
import { site } from '$lib/content/site';
import type { EntryGenerator, PageLoad } from './$types';

export const entries: EntryGenerator = () => site.archive.map(({ slug }) => ({ slug }));

export const load: PageLoad = ({ params }) => {
  const index = site.archive.findIndex((a) => a.slug === params.slug);
  if (index < 0) error(404, 'Project not found');
  return {
    item: site.archive[index],
    next: site.archive[(index + 1) % site.archive.length],
  };
};
