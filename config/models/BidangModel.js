const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const BidangModel = db.define('bidang', {
    // Model attributes are defined here
    bidang_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    bidang_nama: {
        type: DataTypes.STRING,
        allowNull: true
    },

}, {
    // Other model options go here
    freezeTableName: true,
    timestamps: false
});

// console.log(User === db.models.User); // true

module.exports = BidangModel