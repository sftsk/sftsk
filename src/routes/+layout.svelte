<script lang="ts">
  import { onMount } from 'svelte';
  import { afterNavigate } from '$app/navigation';

  import '../app.css';
  import bricolageLatin from '@fontsource-variable/bricolage-grotesque/files/bricolage-grotesque-latin-standard-normal.woff2?url';
  import martianLatin from '@fontsource-variable/martian-mono/files/martian-mono-latin-standard-normal.woff2?url';

  import Footer from '$lib/components/Footer.svelte';
  import Header from '$lib/components/Header.svelte';
  import { site } from '$lib/content/site';

  let sendPageview: ((url?: string) => void) | null = null;

  afterNavigate(({ from, to }) => {
    if (from && to?.url && sendPageview) sendPageview(to.url.href);
  });

  onMount(() => {
    import('@plausible-analytics/tracker').then(({ init, track }) => {
      init({
        domain: site.plausible.domain,
        ...(site.plausible.endpoint && { endpoint: site.plausible.endpoint }),
        autoCapturePageviews: false,
        // Clicks to project sites and the archive's font download show up as events.
        outboundLinks: true,
        fileDownloads: true,
        bindToWindow: true,
      });
      track('pageview', {});
      sendPageview = (url) => track('pageview', url ? { url } : {});
    });
  });
</script>

<svelte:head>
  <link rel="preload" href={bricolageLatin} as="font" type="font/woff2" crossorigin="anonymous" />
  <link rel="preload" href={martianLatin} as="font" type="font/woff2" crossorigin="anonymous" />
  <link rel="icon" type="image/png" href="/favicon-32x32.png" />
  <link rel="apple-touch-icon" href="/apple-icon.png" />
  <link rel="manifest" href="/site.webmanifest" />
  <meta name="theme-color" content="#ece9e1" />
</svelte:head>

<a class="skip-link" href="#content">Skip to content</a>

<Header />

<main id="content">
  <slot />
</main>

<Footer />

<!-- Printed-ink titles (app.css applies it): slightly rough edges, and the paper showing through
     where the ink ran thin. Fine specks are thresholded against large blotches, so the wear gathers
     in patches instead of spreading evenly. The last matrix's -11.4 sets how worn: lower is cleaner.
     Filter sizes are in px, not em, so phones get #ink-sm: the same texture k times finer. -->
<svg width="0" height="0" style="position:absolute" aria-hidden="true" focusable="false">
  {#each [{ id: 'ink', k: 1 }, { id: 'ink-sm', k: 2.5 }] as { id, k }}
    <filter {id} x="-1%" y="-2%" width="102%" height="104%" color-interpolation-filters="sRGB">
      <feTurbulence type="fractalNoise" baseFrequency={0.08 * k} numOctaves="2" seed="4" result="warp" />
      <feDisplacementMap in="SourceGraphic" in2="warp" scale={3 / k} xChannelSelector="R" yChannelSelector="G" result="rough" />
      <feTurbulence type="fractalNoise" baseFrequency={0.7 * k} seed="9" />
      <feColorMatrix values="1 0 0 0 0  0 0 0 0 0  0 0 0 0 0  0 0 0 0 1" result="fine" />
      <feTurbulence type="fractalNoise" baseFrequency={0.01 * k} numOctaves="2" seed="2" />
      <feColorMatrix values="1 0 0 0 0  0 0 0 0 0  0 0 0 0 0  0 0 0 0 1" result="blot" />
      <feComposite in="fine" in2="blot" operator="arithmetic" k2="0.5" k3="0.5" />
      <feColorMatrix values="0 0 0 0 0  0 0 0 0 0  0 0 0 0 0  30 0 0 0 -11.4" result="ink" />
      <feComposite in="rough" in2="ink" operator="in" />
    </filter>
  {/each}
</svg>
