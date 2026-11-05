// Bakes src/lib/assets/ink.webp, the worn-ink mask on the big titles (app.css).
// Fine specks are thresholded against large soft blotches, so the wear gathers in patches,
// and stitchTiles makes the tile seamless. Baked once because Safari renders live
// feTurbulence unevenly, and a mask image is cheap to redraw while the name animates.
//   node scripts/bake-ink.mjs [wear]   higher wear = more paper showing through
import sharp from 'sharp';

const size = 768;
const wear = Number(process.argv[2] ?? 9.6);
const opaque = '1 0 0 0 0  0 0 0 0 0  0 0 0 0 0  0 0 0 0 1';

const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="${size}" height="${size}">
  <filter id="f" x="0" y="0" width="100%" height="100%" color-interpolation-filters="sRGB">
    <feTurbulence type="fractalNoise" baseFrequency="0.4" stitchTiles="stitch" seed="9" />
    <feColorMatrix values="${opaque}" result="fine" />
    <feTurbulence type="fractalNoise" baseFrequency="0.006" numOctaves="2" stitchTiles="stitch" seed="2" />
    <feColorMatrix values="${opaque}" result="blot" />
    <feComposite in="fine" in2="blot" operator="arithmetic" k2="0.5" k3="0.5" />
    <feColorMatrix values="0 0 0 0 0  0 0 0 0 0  0 0 0 0 0  30 0 0 0 -${wear}" />
  </filter>
  <rect width="100%" height="100%" filter="url(#f)" />
</svg>`;

await sharp(Buffer.from(svg)).webp({ quality: 80, alphaQuality: 80 }).toFile('src/lib/assets/ink.webp');
