const model = require("../config/models/index");
const { Op } = require('sequelize');

let controller = {}

controller.show = async function (req, res) {

    const nim = req.user.nim

    let Kompetensi = await model.KompetensiModel.findAll({
        where: { nim: nim },
        include: [
            { model: model.BidangModel },
        ]
    })

    res.json({
        status: "success",
        message: "Berhasil mendapatkan penugasan",
        Kompetensi
    })

};

module.exports = controller;