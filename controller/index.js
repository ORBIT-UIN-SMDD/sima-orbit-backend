const controller = {}

//inisialisasi controller yang dibuat kesini
const auth = require("./auth")
const profile = require("./profile")
const { fakultas, prodi } = require("./FakultasProdi")
const pengumuman = require("./pengumuman")
const example = require("./example")

controller.auth = auth;
controller.profile = profile;
controller.fakultas = fakultas;
controller.prodi = prodi;
controller.pengumuman = pengumuman;
controller.example = example;


module.exports = controller