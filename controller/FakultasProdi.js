const validation = require("../helpers/validation")
const bcrypt = require('bcryptjs');
const jwt = require("jsonwebtoken");
const model = require("../config/models/index");
const { today } = require("../helpers/date");
const { where } = require("sequelize");


let controller = {}

controller.fakultas = async (req, res) => {

    const fakultas = await model.FakultasModel.findAll()

    res.json({
        status: "success",
        messsage: "find all",
        fakultas
    });
};
controller.prodi = async (req, res) => {

    const fakultas_id = req.query.fakultas_id
    const prodi = await model.ProdiModel.findAll({
        where: { fakultas_id: fakultas_id }
    })

    res.json({
        status: "success",
        messsage: "find all",
        prodi
    });


};

module.exports = controller;