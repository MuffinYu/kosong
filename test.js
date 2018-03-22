var callfile = require('child_process'); 

callfile.execFile('build.sh', null, null, function(err, stdout, stderr) {
  console.log('res', err, stdout, stderr);
})
