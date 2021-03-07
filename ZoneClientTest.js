const h1serv = require("./h1z1-server/h1z1-server");
const { Base64 } = require("js-base64");

const ClientArray = [];
for (let index = 0; index < 100; index++) {
  ClientArray.push(
    new h1serv.ZoneClient(
      "localhost",
      1117,
      Base64.toUint8Array("F70IaxuU8C/w7FPXY1ibXw=="),
      "0x482148418" + index,
      "ok",
      "udp9",
      "0.2",
      6000 + index
    )
  );
}

ClientArray.forEach((Client) => {
  Client.connect();
});
