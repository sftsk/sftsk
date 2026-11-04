<script lang="ts">
  import { onMount } from 'svelte';
  import ProjectVisual from '$lib/components/ProjectVisual.svelte';
  import { projectGallery } from '$lib/content/project-images';
  import type { ProjectItem, ProjectStatus } from '$lib/content/site';

  export let projects: ProjectItem[];

  const tagClass: Record<ProjectStatus, string> = {
    Live: 'tag--live',
    'Soon': 'tag--tf',
    Client: 'tag--client',
  };
  const startYear = (p: ProjectItem) => String(parseInt(p.years, 10));
  const span = `${startYear(projects[0])} → ${startYear(projects[projects.length - 1])}`;

  let open: Record<string, boolean> = {};
  let active: string | null = null;
  let mode: 'mouse' | 'park' | null = null;

  let listEl: HTMLOListElement;
  let floaterEl: HTMLDivElement;
  let fInEl: HTMLDivElement;

  // The handlers below are set up once mounted; until then rows only open and close.
  let show = (_slug: string, _how: 'mouse' | 'park') => {};
  let hide = (_now: boolean) => {};

  function toggle(slug: string) {
    open[slug] = !open[slug];
    if (active === slug) {
      if (open[slug]) hide(true);
      else show(slug, mode ?? 'park');
    }
  }

  onMount(() => {
    const clamp = (v: number, a: number, b: number) => Math.min(b, Math.max(a, v));
    const reduce = matchMedia('(prefers-reduced-motion: reduce)');
    const hover = matchMedia('(hover: hover) and (pointer: fine)');
    const row = (slug: string) => listEl.querySelector<HTMLElement>(`#w-${slug}`)!;

    let fOn = false;
    let hideT = 0;
    let raf = 0;
    let fx = 0, fy = 0, tx = 0, ty = 0, fw = 0, fh = 0, rot = 0, fsc = 1, fscT = 1;
    let mx = innerWidth / 2;
    let my = innerHeight / 2;
    const kick = () => {
      if (!raf) raf = requestAnimationFrame(frame);
    };

    function setFloat(on: boolean) {
      fOn = on;
      floaterEl.classList.toggle('is-on', on);
    }

    function caption(p: ProjectItem) {
      const c = document.createElement('div');
      c.className = 'f-cap';
      const b = document.createElement('b');
      b.textContent = p.name;
      const s = document.createElement('span');
      s.textContent = p.tagline;
      const e = document.createElement('em');
      e.textContent = `${p.years} · ${p.status}`;
      c.append(b, s, e);
      return c;
    }

    show = (slug, how) => {
      clearTimeout(hideT);
      active = slug;
      mode = how;
      if (open[slug] || !hover.matches) return setFloat(false);
      // The floater shows a copy of the row's first visual, so it's already loaded.
      const src = row(slug).querySelector('.strip .m');
      if (!src) return setFloat(false);
      if (fInEl.dataset.for !== slug) {
        const clone = (src.closest('picture') ?? src).cloneNode(true) as Element;
        clone.querySelectorAll('img').forEach((img) => {
          img.alt = '';
          img.removeAttribute('loading');
        });
        fInEl.replaceChildren(clone, caption(projects.find((p) => p.slug === slug)!));
        fInEl.dataset.for = slug;
      }
      const was = fOn;
      setFloat(true);
      fw = floaterEl.offsetWidth;
      fh = floaterEl.offsetHeight;
      target();
      if (!was) {
        fx = tx;
        fy = ty + (reduce.matches ? 0 : 18);
        fsc = fscT;
        rot = 0;
        floaterEl.style.transform = `translate3d(${fx}px,${fy}px,0) scale(${fsc})`;
      }
      kick();
    };

    hide = (now) => {
      clearTimeout(hideT);
      const go = () => {
        active = null;
        mode = null;
        setFloat(false);
      };
      if (now) go();
      else hideT = window.setTimeout(go, 70);
    };

    function target() {
      if (!active) return;
      const vw = innerWidth;
      const vh = innerHeight;
      const top = 48;
      if (mode === 'mouse') {
        fscT = 1;
        tx = clamp(mx < vw * 0.58 ? mx + 36 : mx - fw - 36, 12, vw - fw - 12);
        ty = clamp(my - fh * 0.4, top, vh - fh - 12);
      } else {
        // Keyboard focus: park it beside the row instead of following anything.
        const r = row(active).querySelector('.row-head')!.getBoundingClientRect();
        const nr = row(active).querySelector('.c-name')!.getBoundingClientRect();
        fscT = clamp((vh - top - 14) / fh, 0.5, 1);
        const w = fw * fscT;
        const h = fh * fscT;
        tx = clamp(Math.max(nr.right + 48, vw * 0.4), 12, vw - w - 12);
        ty = clamp(r.top + r.height / 2 - h * 0.3, top, vh - h - 12);
      }
    }

    function frame() {
      raf = 0;
      if (!fOn) return;
      if (mode === 'park') target();
      const k = reduce.matches ? 1 : 0.2;
      const px = fx;
      fx += (tx - fx) * k;
      fy += (ty - fy) * k;
      fsc += (fscT - fsc) * k;
      const rotT = reduce.matches ? 0 : clamp((fx - px) * 0.35, -9, 9) + (mode === 'park' ? -2 : 0);
      rot += (rotT - rot) * (reduce.matches ? 1 : 0.16);
      floaterEl.style.transform = `translate3d(${fx.toFixed(1)}px,${fy.toFixed(1)}px,0) rotate(${rot.toFixed(2)}deg) scale(${fsc.toFixed(3)})`;
      const moving =
        Math.abs(tx - fx) > 0.3 || Math.abs(ty - fy) > 0.3 || Math.abs(rotT - rot) > 0.04 || Math.abs(fscT - fsc) > 0.002;
      if (moving) kick();
    }

    // Long names shrink just enough that their bold hover state still fits the column.
    function fitNames() {
      for (const n of listEl.querySelectorAll<HTMLElement>('.c-name')) {
        n.style.removeProperty('--nk');
        n.style.transition = 'none';
        n.style.justifySelf = 'stretch';
        const avail = n.clientWidth;
        n.style.justifySelf = 'start';
        n.style.fontVariationSettings = '"wght" 800, "wdth" 100';
        const need = n.getBoundingClientRect().width + parseFloat(getComputedStyle(n).fontSize) * 0.14;
        n.style.justifySelf = '';
        n.style.fontVariationSettings = '';
        if (avail > 0 && need > avail) n.style.setProperty('--nk', (avail / need).toFixed(4));
        requestAnimationFrame(() => (n.style.transition = ''));
      }
    }

    const onPointerMove = (e: PointerEvent) => {
      if (e.pointerType !== 'mouse') return;
      mx = e.clientX;
      my = e.clientY;
      if (fOn && mode === 'mouse') {
        target();
        kick();
      }
    };
    let resizeT = 0;
    const onResize = () => {
      clearTimeout(resizeT);
      resizeT = window.setTimeout(fitNames, 120);
    };

    addEventListener('pointermove', onPointerMove, { passive: true });
    addEventListener('resize', onResize);
    fitNames();
    document.fonts.ready.then(fitNames);

    return () => {
      cancelAnimationFrame(raf);
      clearTimeout(hideT);
      clearTimeout(resizeT);
      removeEventListener('pointermove', onPointerMove);
      removeEventListener('resize', onResize);
    };
  });
</script>

<section class="index" id="work" aria-labelledby="work-title">
  <div class="ihead">
    <h2 id="work-title">Work<span>{span}</span></h2>
    <span class="ih-count">{String(projects.length).padStart(2, '0')} selected</span>
  </div>
  <div class="cols" aria-hidden="true"><span>Year</span><span>Project</span><span>Role</span><span>Status</span><span></span></div>

  <ol class="list" class:is-dim={mode === 'mouse'} bind:this={listEl}>
    {#each projects as p, i}
      {@const year = startYear(p)}
      {@const ditto = i > 0 && startYear(projects[i - 1]) === year}
      <li class="row" id="w-{p.slug}" data-year={year} class:is-open={open[p.slug]} class:is-active={active === p.slug}>
        <button
          class="row-head"
          type="button"
          id="rh-{p.slug}"
          aria-expanded={!!open[p.slug]}
          aria-controls="rb-{p.slug}"
          on:click={() => toggle(p.slug)}
          on:pointerenter={(e) => e.pointerType === 'mouse' && show(p.slug, 'mouse')}
          on:pointerleave={(e) => e.pointerType === 'mouse' && active === p.slug && mode === 'mouse' && hide(false)}
          on:focus={(e) => e.currentTarget.matches(':focus-visible') && show(p.slug, 'park')}
          on:blur={() => active === p.slug && mode === 'park' && hide(false)}
        >
          <span class="c-year">
            {#if ditto}<span class="ditto" aria-hidden="true">"</span><span class="yr-rep">{year}</span>{:else}{year}{/if}
          </span>
          <span class="c-name">{p.name}</span>
          <span class="c-role">{p.role}</span>
          <span class="c-status"><span class="tag {tagClass[p.status]}">{p.status}</span></span>
          <span class="c-plus" aria-hidden="true"></span>
        </button>
        <div class="row-body" id="rb-{p.slug}" role="region" aria-labelledby="rh-{p.slug}">
          <div class="rb-clip">
            <div class="rb">
              <div class="rb-main">
                <p class="one">{p.tagline}</p>
                <div class="strip">
                  <ProjectVisual project={p} />
                  {#each projectGallery(p.slug).slice(0, 1) as image}
                    <ProjectVisual project={p} {image} lazy />
                  {/each}
                </div>
              </div>
              <dl class="facts">
                <div><dt>Years</dt><dd>{p.years}</dd></div>
                <div><dt>Role</dt><dd>{p.role}</dd></div>
                <div><dt>Status</dt><dd>{p.status}</dd></div>
                {#if p.stack.length}<div><dt>Stack</dt><dd>{p.stack.join(', ')}</dd></div>{/if}
                <div><dt></dt><dd><a class="more" href="/work/{p.slug}/">Read the case →</a></dd></div>
              </dl>
            </div>
          </div>
        </div>
      </li>
    {/each}
  </ol>
</section>

<div class="floater" aria-hidden="true" bind:this={floaterEl}><div class="f-in" bind:this={fInEl}></div></div>
