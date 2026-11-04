import { error } from '@sveltejs/kit';
import { site } from '$lib/content/site';
import type { EntryGenerator, PageLoad } from './$types';

export const entries: EntryGenerator = () => site.projects.map(({ slug }) => ({ slug }));

export const load: PageLoad = ({ params }) => {
  const index = site.projects.findIndex((p) => p.slug === params.slug);
  if (index < 0) error(404, 'Project not found');
  return {
    project: site.projects[index],
    next: site.projects[(index + 1) % site.projects.length],
  };
};
