var shell = require('shelljs');
var defaultTheme = 'bonyfish';
var theme = process.env.THEME ? process.env.THEME : defaultTheme;

console.log('************************\n');
console.log('[Current Theme]: ' + theme + '\n');
console.log('************************\n');

if (shell.exec('gulp build --gulpfile packages/theme-' + theme + '/gulpfile.js').code !== 0) {
  shell.echo('Error: gulp build failed');
  shell.exit(1);
}

if (shell.exec('cp-cli packages/theme-' + theme + '/lib lib/theme-' + theme).code !== 0) {
  shell.echo('Error: cp to lib failed');
  shell.exit(1);
}
