<script lang="ts">
  import { onMount } from 'svelte';
  import portrait from '$lib/assets/lukas.jpg?enhanced';
  import { indexYear } from '$lib/components/Header.svelte';
  import Hero from '$lib/components/Hero.svelte';
  import PageHead from '$lib/components/PageHead.svelte';
  import WorkIndex from '$lib/components/WorkIndex.svelte';
  import { personJsonLd, site } from '$lib/content/site';
  import { escapeInlineScript } from '$lib/utils/head';

  const personJson = escapeInlineScript(JSON.stringify(personJsonLd));
  const counts = { '#work': site.projects.length, '#lab': site.lab.length };
  // Newest first, like the rest of the index.
  const archive = [...site.archive].reverse();

  // The bar shows the year of whichever row is at the top of the screen.
  let markers: HTMLElement[] = [];
  function updateYear() {
    let current = '';
    for (const m of markers) {
      if (m.getBoundingClientRect().top <= 64) current = m.dataset.year ?? '';
      else break;
    }
    indexYear.set(current);
  }

  onMount(() => {
    markers = [...document.querySelectorAll<HTMLElement>('[data-year]')];
    updateYear();
    return () => indexYear.set('');
  });
</script>

<svelte:window on:scroll={updateYear} />

<PageHead title={site.meta.defaultTitle} description={site.meta.defaultDescription} path="/" />

<svelte:head>
  {@html `<script type="application/ld+json">${personJson}</script>`}
</svelte:head>

<Hero hero={site.hero} name={site.about.name} imageAlt={site.about.imageAlt} nav={site.nav} {counts} />

<WorkIndex projects={site.projects} />

<section class="sub" id="lab" aria-labelledby="lab-title" data-year="Lab">
  <div class="shead">
    <h2 id="lab-title">Lab</h2>
    <p>Side projects and experiments</p>
    <span class="ih-count">{String(site.lab.length).padStart(2, '0')}</span>
  </div>
  <ul class="mini">
    {#each site.lab as item, i}
      <li>
        <svelte:element
          this={item.href ? 'a' : 'div'}
          class="mrow"
          href={item.href}
          target={item.href ? '_blank' : undefined}
          rel={item.href ? 'noreferrer noopener' : undefined}
        >
          <span class="c-year">
            {#if i > 0}<span class="ditto" aria-hidden="true">"</span><span class="yr-rep">Lab</span>{:else}Lab{/if}
          </span>
          <span class="m-name">{item.name}</span>
          <span class="m-desc">{item.summary}</span>
          {#if item.href}<span class="m-go" aria-hidden="true">↗</span>{/if}
        </svelte:element>
      </li>
    {/each}
  </ul>
</section>

<section class="sub" id="about" aria-labelledby="about-title" data-year="About">
  <div class="shead">
    <h2 id="about-title">About</h2>
    <p>{site.about.location}</p>
  </div>
  <div class="about">
    <div class="about-photo">
      <enhanced:img src={portrait} alt={site.about.imageAlt} sizes="(max-width: 699px) 14rem, 23rem" loading="lazy" />
    </div>
    <div class="about-text">
      <p class="about-lead">{site.about.lead}</p>
      {#each site.about.body as paragraph}
        <p>{paragraph}</p>
      {/each}
    </div>
  </div>
  <ol class="mini timeline">
    {#each site.about.timeline as item}
      <li class="mrow">
        <span class="c-year">{item.years}</span>
        <span class="m-name">{item.title}</span>
      </li>
    {/each}
  </ol>
</section>

<section class="sub sub--archive" id="archive" aria-labelledby="archive-title">
  <div class="shead">
    <h2 id="archive-title">Archive</h2>
    <p>Early work and university projects</p>
    <a class="ih-count" href="/archive/index.html">The old site →</a>
  </div>
  <ol class="mini">
    {#each archive as item, i}
      {@const ditto = i > 0 && archive[i - 1].year === item.year}
      <li data-year={item.year}>
        <a class="mrow" href={item.href}>
          <span class="c-year">
            {#if ditto}<span class="ditto" aria-hidden="true">"</span><span class="yr-rep">{item.year}</span>{:else}{item.year}{/if}
          </span>
          <span class="m-name">{item.name}</span>
          <span class="m-desc">{item.summary}</span>
          <span class="m-go" aria-hidden="true">→</span>
        </a>
      </li>
    {/each}
  </ol>
</section>
