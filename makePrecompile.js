import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

// ESM uyumlu __dirname oluşturma
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// __temp dizinini sil ve tekrar oluştur
fs.rmSync(path.join(__dirname, '__temp'), { recursive: true, force: true });
fs.mkdirSync(path.join(__dirname, '__temp'));

// 'tests/features' dizinindeki .feature dosyalarını işle
fs
  .readdirSync(path.join(__dirname, 'tests', 'features'), { withFileTypes: true })
  .filter(dirent => dirent.isFile() && dirent.name.endsWith('.feature'))
  .forEach(fileName => {
    let content = fs.readFileSync(path.join(__dirname, 'tests', 'features', fileName.name), 'utf-8');
    content = content.replace(/\n\s*\|\s*\{dynamic[^\|]*\|/g, toReplace => {
      let details;
      try {
        let func = new Function(`return ${toReplace.split('|')[1]}`);
        details = func();
      } catch (e) {
        console.log(e);
        return '';
      }
      if (details.dynamic) {
        details.max = isNaN(details.max) ? 1000 : details.max;
        let indent = ''.padEnd(toReplace.split('|')[0].length, ' ');
        let examples = [...new Array(details.max + 1)].map((x, i) =>
          indent + `| ${i === 0 ? details.dynamic : ''} |`).join('\n');
        return '\n' + examples;
      }
      return '';
    });
    fs.writeFileSync(path.join(__dirname, '__temp', fileName.name), content, 'utf-8');
  });
