var liveServer = require("live-server");

var params = {
    port: 8080,
    wait: 1000,
    open: false, // don't open browser
    logLevel: 2, // 0 = errors only, 1 = some, 2 = lots
    ignore: '.git',
};

liveServer.start(params);
