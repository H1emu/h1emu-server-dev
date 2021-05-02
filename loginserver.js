const H1Z1servers = require("./h1z1-server");
var server = new H1Z1servers.LoginServer(
  1115, // <- server port
  process.env.MONGO_URL // <- MongoDB address ( if blank server start in solo mode )
);
// To use adminClient
//server._protocol = new H1Z1servers.LoginProtocol("LoginUdp_11");
server.start();
