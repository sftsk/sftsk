<script lang="ts">
  import PageHead from '$lib/components/PageHead.svelte';
  import { projectGallery, shape } from '$lib/content/project-images';
  import { site } from '$lib/content/site';
  import type { PageData } from './$types';

  export let data: PageData;

  $: item = data.item;
  $: next = data.next;
  $: gallery = projectGallery(item.slug);
  const poster = (src: string) => src.replace(/[^/]+$/, 'poster.jpg');
</script>

<PageHead title={`${item.name} | ${site.brand.name}`} description={item.summary} path={`/archive/${item.slug}/`} />

<article>
  <header class="case-head">
    <p class="case-kicker">
      <span>{item.year}</span>
      <span>Archive</span>
    </p>
    <h1 class="case-name">{item.name}</h1>
  </header>

  <div class="case-body">
    <div class="case-text">
      <p class="one">{item.summary}.</p>
      {#each item.description as paragraph}
        <p>{paragraph}</p>
      {/each}
      {#if item.links?.length}
        <p class="case-links">
          {#each item.links as link}
            <a class="more" href={link.href} download>{link.label} ↓</a>
          {/each}
        </p>
      {/if}
    </div>
    <dl class="facts">
      <div><dt>Year</dt><dd>{item.year}</dd></div>
      <div><dt>From</dt><dd>The old maakee.me</dd></div>
    </dl>
  </div>

  <div class="case-media">
    {#each item.videos ?? [] as src}
      <!-- svelte-ignore a11y-media-has-caption -->
      <video class="m m-land" {src} poster={poster(src)} controls preload="none" playsinline></video>
    {/each}
    {#each gallery as image, i}
      <enhanced:img class="m {shape(image)}" src={image} alt={`${item.name}, picture ${i + 1}`} loading={i ? 'lazy' : undefined} />
    {/each}
  </div>
</article>

<nav class="index" aria-label="Next archive project">
  <a class="end-row" href="/archive/{next.slug}/">
    <span class="c-year">Next</span>
    <span class="end-name">{next.name}</span>
    <span class="end-cta">{next.year} →</span>
  </a>
</nav>
