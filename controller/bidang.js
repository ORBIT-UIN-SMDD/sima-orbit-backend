
const model = require("../config/models/index");
const { today } = require("../helpers/date");
const { where } = require("sequelize");


let controller = {}

controller.bidang = async (req, res) => {

    const bidang = await model.BidangModel.findAll()

    res.json({
        status: "success",
        messsage: "find all",
        bidang
    });
};

module.exports = controller;