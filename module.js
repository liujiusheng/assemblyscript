const fs = require("fs");
let myModule = new WebAssembly.Instance(new WebAssembly.Module(fs.readFileSync(__dirname + "/module.optimized.wasm"), {}));
console.log(myModule.exports.add());