<script lang="ts">
  import { site } from '$lib/content/site';

  const year = new Date().getFullYear();
</script>

<footer class="end" id="contact" data-year="Now">
  <a class="end-row" href={site.contact.email.href}>
    <span class="c-year">Now</span>
    <span class="end-name">{site.contact.email.label}</span>
    <span class="end-cta">Write ↗</span>
  </a>
  <div class="foot">
    <span>© {year} {site.about.name} · sftsk</span>
    <a href={site.contact.github.href} target="_blank" rel="noreferrer noopener">{site.contact.github.label} ↗</a>
    <a href={site.contact.linkedin.href} target="_blank" rel="noreferrer noopener">{site.contact.linkedin.label} ↗</a>
    <span class="foot-note">No cookies. Anonymous visit stats via Plausible.</span>
  </div>
</footer>
