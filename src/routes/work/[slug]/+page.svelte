<script lang="ts">
  import PageHead from '$lib/components/PageHead.svelte';
  import ProjectVisual from '$lib/components/ProjectVisual.svelte';
  import { projectGallery } from '$lib/content/project-images';
  import { site } from '$lib/content/site';
  import type { PageData } from './$types';

  export let data: PageData;

  $: project = data.project;
  $: next = data.next;
  $: gallery = projectGallery(project.slug);
</script>

<PageHead title={`${project.name} | ${site.brand.name}`} description={project.tagline} path={`/work/${project.slug}/`} />

<article>
  <header class="case-head">
    <p class="case-kicker">
      <span>{project.years}</span>
      <span>{project.role}</span>
      <span class="tag" class:tag--live={project.status === 'Live'} class:tag--tf={project.status === 'Soon'} class:tag--client={project.status === 'Client'}>{project.status}</span>
    </p>
    <h1 class="case-name">{project.name}</h1>
  </header>

  <div class="case-body">
    <div class="case-text">
      <p class="one">{project.tagline}</p>
      {#each project.description as paragraph}
        <p>{paragraph}</p>
      {/each}
      {#if project.links?.length}
        <p class="case-links">
          {#each project.links as link}
            <a class="more" href={link.href} target="_blank" rel="noreferrer noopener">{link.label} ↗</a>
          {/each}
        </p>
      {/if}
    </div>
    <dl class="facts">
      <div><dt>Years</dt><dd>{project.years}</dd></div>
      <div><dt>Role</dt><dd>{project.role}</dd></div>
      <div><dt>Status</dt><dd>{project.status}</dd></div>
      {#if project.stack.length}<div><dt>Stack</dt><dd>{project.stack.join(', ')}</dd></div>{/if}
    </dl>
  </div>

  <div class="case-media">
    <ProjectVisual {project} />
    {#each gallery as image}
      <ProjectVisual {project} {image} lazy />
    {/each}
  </div>
</article>

<nav class="index" aria-label="Next project">
  <a class="end-row" href="/work/{next.slug}/">
    <span class="c-year">Next</span>
    <span class="end-name">{next.name}</span>
    <span class="end-cta">{next.years} →</span>
  </a>
</nav>
