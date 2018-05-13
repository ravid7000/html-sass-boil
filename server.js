var liveServer = require('live-server')

var params = {
    port: 5500,
    host: '0.0.0.0',
    root: './',
    open: true,
    wait: 1000
}

liveServer.start(params);
