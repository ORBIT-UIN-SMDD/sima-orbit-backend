const controller = {}

//inisialisasi controller yang dibuat kesini
const auth = require("./auth")
const profile = require("./profile")
const { fakultas, prodi } = require("./FakultasProdi")
const example = require("./example")

controller.auth = auth;
controller.profile = profile;
controller.fakultas = fakultas;
controller.prodi = prodi;
controller.example = example;


module.exports = controller