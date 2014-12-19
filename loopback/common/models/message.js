module.exports = function(Message) {
  Message.greet = function(cb) {
    cb(null, 'hello world');
  };

  Message.remoteMethod(
    'greet',
    {
      http: {verb: 'get'},
      returns: {arg: 'greet', type: 'string'}
    }
  );
};
