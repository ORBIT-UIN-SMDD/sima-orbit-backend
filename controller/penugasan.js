const model = require("../config/models/index");

let controller = {}

controller.show = async function (req, res) {

    const status = req.user.status
    const nim = req.user.nim

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
        penugasan = await model.PenugasanPengurusModel.findAll({
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