var express = require('express');
var app = express();
var compression = require('compression');
var cors = require('cors');
var bodyParser = require('body-parser');
var favicon = require('serve-favicon');
var path = require('path');

app.use(favicon(path.join(__dirname, 'favicon.ico')));
app.use(cors());
app.use(compression());
app.use(bodyParser.json({strict: false}));
app.use(bodyParser.urlencoded({extended: false}));

app.get('/api/messages/greet', function(req, res) {
  res.json({greet: 'hello world'});
});

var server = app.listen(3000, function() {
  var host = server.address().address;
  var port = server.address().port;
  console.log('Listening on http://%s:%s', host, port);
});
