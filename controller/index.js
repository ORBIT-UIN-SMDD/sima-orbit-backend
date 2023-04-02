const controller = {}

//inisialisasi controller yang dibuat kesini
const auth = require("./auth")
const profile = require("./profile")
const { fakultas, prodi } = require("./FakultasProdi")
const { bidang } = require("./bidang")
const pengumuman = require("./pengumuman")
const penugasan = require("./penugasan")
const agenda = require("./agenda")
const example = require("./example")

controller.auth = auth;
controller.profile = profile;
controller.fakultas = fakultas;
controller.prodi = prodi;
controller.bidang = bidang;
controller.pengumuman = pengumuman;
controller.penugasan = penugasan;
controller.agenda = agenda;
controller.example = example;


module.exports = controller