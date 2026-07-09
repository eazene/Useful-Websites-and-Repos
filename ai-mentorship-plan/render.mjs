import pkg from '/opt/node22/lib/node_modules/playwright/index.js';
const { chromium } = pkg;
import { pathToFileURL } from 'url';
const [,, inPath, outPath] = process.argv;
const browser = await chromium.launch({
  executablePath: '/opt/pw-browsers/chromium_headless_shell-1194/chrome-linux/headless_shell',
});
const page = await browser.newPage();
await page.goto(pathToFileURL(inPath).href, { waitUntil: 'networkidle' });
await page.evaluate(async () => { if (document.fonts?.ready) await document.fonts.ready; });
await page.pdf({ path: outPath, format: 'Letter', printBackground: true, preferCSSPageSize: true });
await browser.close();
console.log('WROTE', outPath);
