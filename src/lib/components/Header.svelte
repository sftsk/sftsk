<script lang="ts" context="module">
  import { writable } from 'svelte/store';

  /** The year of the row at the top of the screen, while scrolling the homepage index. */
  export const indexYear = writable('');
</script>

<script lang="ts">
  import { page } from '$app/state';
  import { site } from '$lib/content/site';

  const range = `${parseInt(site.projects[0].years, 10)}→${Math.min(...site.archive.map((a) => a.year))}`;

  let scrollY = 0;
</script>

<svelte:window bind:scrollY />

<header class="bar" class:is-stuck={scrollY > 4}>
  <a class="bar-id" href="/">sftsk</a>
  <span class="bar-mid">Helsinki · 60.17°N 24.94°E</span>
  {#if page.url.pathname === '/'}
    <span class="bar-year">Index <b>{$indexYear || range}</b></span>
  {:else}
    <a class="bar-year" href="/#work">← Index</a>
  {/if}
  <a class="bar-mail" href={site.contact.email.href}>{site.contact.email.label}</a>
</header>
