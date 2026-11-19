const fs = require('fs');
const path = require('path');
const r1 = require('./test_ej1').resultados;
const r2 = require('./test_ej2').resultados;
const r3 = require('./test_ej3').resultados;
const all = [...r1, ...r2, ...r3];

const outDir = path.join(__dirname, '..', 'resultados');
fs.mkdirSync(outDir, { recursive: true });
fs.writeFileSync(path.join(outDir, 'tabla_unitarias.json'), JSON.stringify(all, null, 2));

const md = [
  '# Tabla de resultados — Pruebas unitarias (Hospital San Gabriel / Torquato)',
  '',
  '| Ej. | Caso | Esperado / manual | Obtenido | Resultado |',
  '|---|---|---|---|---|',
  ...all.map((row) => {
    const esp = row.esperadoManual ?? row.esperado ?? '';
    return `| ${row.ejercicio} | ${row.caso} | ${esp} | ${row.obtenido} | ${row.resultado} |`;
  }),
  '',
  `Total: **${all.length}** casos OK.`,
].join('\n');
fs.writeFileSync(path.join(outDir, 'tabla_unitarias.md'), md);
console.log(`\nTabla escrita (${all.length} filas) → resultados/tabla_unitarias.md`);
