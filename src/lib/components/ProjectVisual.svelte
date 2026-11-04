<script lang="ts">
  import type { Picture } from '@sveltejs/enhanced-img';
  import { projectCover, projectIcon } from '$lib/content/project-images';
  import type { ProjectItem } from '$lib/content/site';

  export let project: ProjectItem;
  /** A specific gallery image; defaults to the cover, then the app icon. */
  export let image: Picture | undefined = undefined;
  export let lazy = false;

  $: picture = image ?? projectCover(project.slug);
  $: icon = picture ? undefined : projectIcon(project.slug);

  const shape = ({ img }: Picture) =>
    img.w > img.h * 1.15 ? 'm-land' : img.h > img.w * 1.15 ? 'm-port' : 'm-sq';
</script>

{#if picture}
  <enhanced:img
    class="m {shape(picture)}"
    src={picture}
    alt={`${project.name}: ${project.tagline}`}
    loading={lazy ? 'lazy' : undefined}
  />
{:else if icon}
  <enhanced:img class="m m-sq m-icon" src={icon} alt={`${project.name} app icon`} loading={lazy ? 'lazy' : undefined} />
{:else if project.slug === 'torggler-sales'}
  <!-- ponytail: the two Torggler cases have no screenshots (they'd show client data), so they're drawn here. -->
  <div class="m m-card card-sales" role="img" aria-label="Diagram: ERP, approvals and an AI assistant feeding one sales workspace">
    <div class="cs">
      <span class="ck">Client · Torggler · {project.years}</span>
      <ul class="cs-in"><li>ERP</li><li>Approvals</li><li>AI assistant</li></ul>
      <span class="cs-out">Sales<br />work-<br />space</span>
      <span class="ck cs-foot">For reps and back office</span>
    </div>
  </div>
{:else if project.slug === 'torggler-pim'}
  <svg class="m m-card" viewBox="0 0 400 300" width="400" height="300" role="img" aria-label="Diagram: per-market datasheets, a 3D packaging preview and an MCP server for AI agents">
    <rect width="400" height="300" fill="#121211" />
    <text x="20" y="30" class="sv-k">TORGGLER · CLIENT · {project.years}</text>
    <rect x="52" y="70" width="92" height="120" fill="#3a3936" />
    <rect x="38" y="82" width="92" height="120" fill="#8d8a83" />
    <g transform="translate(24 94)">
      <rect width="92" height="120" fill="#ece9e1" />
      <rect x="10" y="12" width="44" height="7" fill="#121211" />
      <rect x="10" y="30" width="72" height="3" fill="#aaa79f" />
      <rect x="10" y="38" width="58" height="3" fill="#aaa79f" />
      <rect x="10" y="46" width="66" height="3" fill="#aaa79f" />
      <rect x="10" y="60" width="32" height="32" fill="none" stroke="#121211" stroke-width="1.5" />
      <rect x="48" y="60" width="34" height="3" fill="#aaa79f" />
      <rect x="48" y="68" width="26" height="3" fill="#aaa79f" />
      <text x="10" y="110" class="sv-k sv-ink">MKT 01</text>
    </g>
    <path d="M126 154 H168" stroke="#ece9e1" stroke-width="1.2" stroke-dasharray="2 4" fill="none" />
    <g transform="translate(222 150)" stroke-linejoin="round" stroke-width="1.5">
      <polygon points="0,-46 46,-22 0,2 -46,-22" fill="rgba(236,233,225,.12)" stroke="#ece9e1" />
      <polygon points="-46,-22 0,2 0,52 -46,28" fill="none" stroke="#ece9e1" />
      <polygon points="0,2 46,-22 46,28 0,52" fill="#30afff" stroke="#30afff" />
      <path d="M-23,-34 L23,-10" stroke="#ece9e1" stroke-dasharray="3 3" fill="none" />
    </g>
    <path d="M276 150 H292" stroke="#ece9e1" stroke-width="1.2" stroke-dasharray="2 4" fill="none" />
    <text x="380" y="178" text-anchor="end" class="sv-big">MCP</text>
    <text x="24" y="262" class="sv-k sv-dim">DATASHEETS / MARKET</text>
    <text x="176" y="262" class="sv-k sv-dim">3D PACKAGING</text>
    <text x="380" y="262" text-anchor="end" class="sv-k sv-dim">FOR AI AGENTS</text>
  </svg>
{/if}
