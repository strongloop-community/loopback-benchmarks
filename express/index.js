var express = require('express');
var app = express();

app.get('/api/messages/greet', function(req, res) {
  res.send('hello world');
});

var server = app.listen(3000, function() {
  var host = server.address().address;
  var port = server.address().port;
  console.log('Listening on http://%s:%s', host, port);
});
