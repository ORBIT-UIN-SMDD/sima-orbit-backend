const model = require("../config/models/index");
const { Op } = require('sequelize');

let controller = {}

controller.show = async function (req, res) {

    const today = new Date();
    let agenda = await model.AgendaModel.findAll({
        where: { agenda_selesai: { [Op.gte]: today } },
        order: [
            ['agenda_selesai', 'DESC']
        ]
    })

    res.json({
        status: "success",
        message: "Berhasil mendapatkan penugasan",
        agenda
    })

};

module.exports = controller;