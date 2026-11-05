<script lang="ts">
  import { onMount } from 'svelte';
  import type { NavItem, SiteContent } from '$lib/content/site';

  export let hero: SiteContent['hero'];
  export let name: string;
  export let nav: NavItem[];
  /** Row counts shown next to the jump links, keyed by href. */
  export let counts: Record<string, number> = {};

  // Two lines: first names, then the surname.
  const cut = name.lastIndexOf(' ');
  const lines = [name.slice(0, cut), name.slice(cut + 1)];

  let heroEl: HTMLElement;
  let nameEl: HTMLElement;
  let metaEl: HTMLElement;

  onMount(() => {
    const clamp = (v: number, a: number, b: number) => Math.min(b, Math.max(a, v));
    const reduce = matchMedia('(prefers-reduced-motion: reduce)');
    const lineEls = [...nameEl.querySelectorAll<HTMLElement>('.nl-in')];
    const marks = [...nameEl.querySelectorAll<HTMLElement>('.bl')];
    const chars = lineEls.flatMap((ln, line) =>
      [...ln.querySelectorAll<HTMLElement>('.ch')].map((el) => ({ el, line, cx: 0, w: 800, d: 100, w0: 1, sx: 1 }))
    );
    const line0 = lineEls[0];
    const n0 = chars.filter((c) => c.line === 0).length;

    let W = 0;
    let fs = 0;
    let heroH = 1;
    let lastKey = '';
    let raf = 0;
    let pad = 0;
    const kick = () => {
      if (!raf) raf = requestAnimationFrame(frame);
    };

    // Size the name so line 1 is exactly as wide as the page, then place the intro beside line 2.
    function fit() {
      for (const c of chars) {
        c.el.style.fontVariationSettings = '';
        c.w = 800;
        c.d = 100;
        c.sx = 1;
        c.el.style.removeProperty('--sx');
      }
      line0.style.letterSpacing = '';
      const cs = getComputedStyle(heroEl);
      W = heroEl.clientWidth - parseFloat(cs.paddingLeft) - parseFloat(cs.paddingRight);
      nameEl.style.fontSize = '100px';
      const w100 = line0.getBoundingClientRect().width || 1;
      fs = Math.max(24, Math.floor(((100 * W) / w100) * 100) / 100 - 0.5);
      nameEl.style.fontSize = `${fs}px`;
      pad = 2 * parseFloat(getComputedStyle(chars[0].el).paddingLeft);
      for (const c of chars) {
        const r = c.el.getBoundingClientRect();
        c.cx = r.left + r.width / 2;
        c.w0 = r.width - pad || 1;
      }
      placeMeta();
      heroH = heroEl.offsetHeight;
      lastKey = '';
      kick();
    }

    function placeMeta() {
      heroEl.classList.remove('is-stack');
      metaEl.style.top = '';
      metaEl.style.bottom = '';
      heroEl.style.removeProperty('--hpb');
      if (innerWidth < 900) return;
      const cs = getComputedStyle(heroEl);
      const hr = heroEl.getBoundingClientRect();
      const l2 = lineEls[1].getBoundingClientRect();
      const b1 = marks[0].getBoundingClientRect().bottom - hr.top;
      const b2 = marks[1].getBoundingClientRect().bottom - hr.top;
      const mw = metaEl.offsetWidth;
      const mh = metaEl.offsetHeight;
      const metaLeft = hr.width - parseFloat(cs.paddingRight) - mw;
      // Surname too long to share its line with the intro: stack instead.
      if (l2.right - hr.left + fs * 0.2 > metaLeft) {
        heroEl.classList.add('is-stack');
        return;
      }
      const top = Math.max(b2 - mh, b1 + fs * 0.08);
      metaEl.style.top = `${top.toFixed(1)}px`;
      metaEl.style.bottom = 'auto';
      const over = top + mh - (hr.height - parseFloat(cs.paddingBottom));
      if (over > 0) heroEl.style.setProperty('--hpb', `calc(${over.toFixed(1)}px + clamp(20px, 2.4vw, 36px))`);
    }

    // Scrolling thins the letters left to right; on desktop the cursor thins the ones under it.
    let curX = -1;
    let curXs = -1;
    let curOn = 0;
    let curOnT = 0;

    function frame() {
      raf = 0;
      if (!fs) return;
      const rm = reduce.matches;
      const p = rm ? 0 : clamp(scrollY / (heroH * 0.85), 0, 1);
      if (rm) curOn = 0;
      else {
        curOn += (curOnT - curOn) * 0.12;
        if (Math.abs(curOnT - curOn) < 0.002) curOn = curOnT;
        if (curX >= 0) {
          curXs = curXs < 0 ? curX : curXs + (curX - curXs) * 0.2;
          if (Math.abs(curX - curXs) < 0.5) curXs = curX;
        }
      }
      const key = `${p.toFixed(4)}|${curOn.toFixed(3)}|${Math.round(curXs)}`;
      if (key === lastKey) return;
      lastKey = key;
      const sigma = fs * 0.6;
      const N = chars.length;
      for (let i = 0; i < N; i++) {
        const c = chars[i];
        let t = clamp(p * 1.7 - (i / (N - 1)) * 0.7, 0, 1);
        t = t * t * (3 - 2 * t);
        let w = 800 - 600 * t;
        let d = 100 - 25 * t;
        if (curOn > 0 && curXs >= 0) {
          const dx = (c.cx - curXs) / sigma;
          const b = Math.exp(-dx * dx) * curOn * (1 - t);
          w -= (w - 230) * b * 0.9;
          d -= (d - 75) * b;
        }
        if (Math.abs(w - c.w) > 0.4 || Math.abs(d - c.d) > 0.15) {
          c.w = w;
          c.d = d;
          c.el.style.fontVariationSettings = `"wght" ${w.toFixed(1)}, "wdth" ${d.toFixed(2)}`;
        }
      }
      // Keep line 1 exactly page-wide: give the width the thinner letters lose back as letter-spacing.
      line0.style.letterSpacing = '0px';
      const ls = Math.max(0, (W - line0.getBoundingClientRect().width) / (n0 - 1));
      // The ink texture squeezes with each letter (app.css). Layout is fresh from the read above,
      // and --sx only touches the mask, so these reads and writes cost no extra layout.
      for (const c of chars) {
        const sx = (c.el.getBoundingClientRect().width - pad) / c.w0;
        if (Math.abs(sx - c.sx) > 0.004) {
          c.sx = sx;
          c.el.style.setProperty('--sx', sx.toFixed(3));
        }
      }
      line0.style.letterSpacing = `${ls.toFixed(2)}px`;
      kick();
    }

    const onPointerMove = (e: PointerEvent) => {
      if (e.pointerType !== 'mouse' || reduce.matches) return;
      curX = e.clientX;
      curOnT = 1;
      kick();
    };
    const onPointerLeave = () => {
      curOnT = 0;
      kick();
    };
    let resizeT = 0;
    const onResize = () => {
      clearTimeout(resizeT);
      resizeT = window.setTimeout(fit, 120);
    };

    nameEl.addEventListener('pointermove', onPointerMove);
    nameEl.addEventListener('pointerleave', onPointerLeave);
    addEventListener('scroll', kick, { passive: true });
    addEventListener('resize', onResize);
    fit();
    document.fonts.ready.then(fit);

    return () => {
      cancelAnimationFrame(raf);
      clearTimeout(resizeT);
      removeEventListener('scroll', kick);
      removeEventListener('resize', onResize);
    };
  });
</script>

<section class="hero" id="top" aria-label="Introduction" bind:this={heroEl}>
  <h1 class="name" bind:this={nameEl}>
    <span class="sr">{name}</span>
    {#each lines as line, li}
      <span class="nl" aria-hidden="true"
        ><span class="nl-in">{#each [...line] as char, i}<span class="ch" style:--o="{(((li * 11 + i) * 0.618) % 1 * -1.6).toFixed(2)}em"
            >{char}</span
          >{/each}<i class="bl"></i></span></span
      >
    {/each}
  </h1>
  <div class="hero-meta" bind:this={metaEl}>
    <div>
      <p class="lead">{hero.title}</p>
      <p class="bio">{hero.intro}</p>
    </div>
    <nav class="jump" aria-label="Sections">
      {#each nav as item}
        <a href={item.href}
          >↓ {item.label}{#if counts[item.href]}<sup>{String(counts[item.href]).padStart(2, '0')}</sup>{/if}</a
        >
      {/each}
    </nav>
  </div>
</section>
