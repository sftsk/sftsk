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
