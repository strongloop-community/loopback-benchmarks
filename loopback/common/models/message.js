module.exports = function(Message) {
  Message.greet = function(cb) {
    console.log('hello world');
    cb();
  };

  Message.remoteMethod(
    'greet',
    {
      http: {path: '/greet', verb: 'get'}
    }
  );
};
