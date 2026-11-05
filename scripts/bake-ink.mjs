// Bakes src/lib/assets/ink.png, the worn-ink mask on the big titles (app.css).
// Fine specks are thresholded against large soft blotches, so the wear gathers in patches,
// and stitchTiles makes the tile seamless. Baked once because Safari renders live
// feTurbulence unevenly, and a mask image is cheap to redraw while the name animates.
// 2048px so the specks stay sharp at 2x even when the name is ~600px tall (3400px-wide screens).
//   node scripts/bake-ink.mjs [wear]   higher wear = more paper showing through
import sharp from 'sharp';

const size = 2048;
const wear = Number(process.argv[2] ?? 9.2);
const opaque = '1 0 0 0 0  0 0 0 0 0  0 0 0 0 0  0 0 0 0 1';

const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="${size}" height="${size}">
  <filter id="f" x="0" y="0" width="100%" height="100%" color-interpolation-filters="sRGB">
    <feTurbulence type="fractalNoise" baseFrequency="0.15" stitchTiles="stitch" seed="9" />
    <feColorMatrix values="${opaque}" result="fine" />
    <feTurbulence type="fractalNoise" baseFrequency="0.00225" numOctaves="2" stitchTiles="stitch" seed="2" />
    <feColorMatrix values="${opaque}" result="blot" />
    <feComposite in="fine" in2="blot" operator="arithmetic" k2="0.5" k3="0.5" />
    <feColorMatrix values="0 0 0 0 0  0 0 0 0 0  0 0 0 0 0  30 0 0 0 -${wear}" />
  </filter>
  <rect width="100%" height="100%" filter="url(#f)" />
</svg>`;

// The mask is near-binary, so four palette levels keep it sharp and small (~60 KB).
await sharp(Buffer.from(svg)).png({ palette: true, colours: 4, compressionLevel: 9 }).toFile('src/lib/assets/ink.png');
