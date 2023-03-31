const model = require("../config/models/index");

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
            include: [
                { model: model.FakultasModel },
                { model: model.ProdiModel },
                { model: model.BidangModel },
            ]
        })
    }

    res.json({
        status: "success",
        message: "Berhasil mendapatkan profile",
        profile
    })

};
controller.edit = async function (req, res) {

    const status = req.query.status
    const nim = req.query.nim

    let profile = {};
    if (status == "anggota") {
        profile = await model.AnggotaModel.update({

        })
    } else if (status == "pengurus") {
        profile = await model.PengurusModel.findOne({
            where: { nim: nim }
        })
    } else if (status == "alumni") {
        profile = await model.AlumniModel.findOne({
            where: { nim: nim }
        })
    }

    res.json({
        status: "success",
        message: "Berhasil mendapatkan profile",
        profile
    })

};

module.exports = controller;