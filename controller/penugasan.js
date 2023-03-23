const model = require("../config/models/index");

let controller = {}

controller.show = async function (req, res) {

    const status = req.query.status
    const nim = req.query.nim

    let penugasan = {};
    if (status == "anggota") {
        penugasan = await model.PenugasanAnggotaModel.findAll({
            where: { nim: nim },
            include: [
                { model: model.AnggotaModel },
                { model: model.PenugasanModel },
            ]

        })
    } else if (status == "pengurus") {
        penugasan = await model.PengurusModel.findAll({
            where: { nim: nim },
            include: [
                { model: model.PengurusModel },
                { model: model.PenugasanModel },
            ]
        })
    }

    res.json({
        status: "success",
        message: "Berhasil mendapatkan penugasan",
        penugasan
    })

};

module.exports = controller;