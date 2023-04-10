const model = require("../config/models/index");
const bcrypt = require('bcryptjs');


let controller = {}

controller.show = async function (req, res) {

    const status = req.user.status
    const nim = req.user.nim

    let profile = {};
    if (status == "anggota") {
        profile = await model.AnggotaModel.findOne({
            where: { nim: nim },
            include: [
                { model: model.FakultasModel },
                { model: model.ProdiModel },
                { model: model.BidangModel },
            ]

        })
    } else if (status == "pengurus") {
        profile = await model.PengurusModel.findOne({
            where: { nim: nim },
            include: [
                { model: model.FakultasModel },
                { model: model.ProdiModel },
                { model: model.BidangModel },
            ]
        })
    } else if (status == "alumni") {
        profile = await model.AlumniModel.findOne({
            where: { nim: nim },

        })
    }

    res.json({
        status: "success",
        message: "Berhasil mendapatkan profile",
        profile
    })

};
controller.edit = async function (req, res) {

    const status = req.user.status
    const nim = req.user.nim

    const body = req.body;

    if (req.body.password == "" || req.body.password.lenght < 7) {
        delete body.password
    } else {
        const salt = await bcrypt.genSalt(10)
        body.password = await bcrypt.hash(body.password, salt)
    }

    console.log(body);

    let profile = {};
    if (status == "anggota") {
        profile = await model.AnggotaModel.update(
            body, {
            where: { nim: nim }
        })
    } else if (status == "pengurus") {
        profile = await model.PengurusModel.update(
            body, {
            where: { nim: nim }
        })

    } else if (status == "alumni") {
        profile = await model.AlumniModel.update(
            body, {
            where: { nim: nim }
        })
    }

    res.json({
        status: "success",
        message: "Berhasil Mengedit Profile",
        profile
    })

};

module.exports = controller;