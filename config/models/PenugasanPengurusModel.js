const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const penugasan = require("./PenugasanModel")
const pengurus = require("./PengurusModel")

const PenugsanPengurusModel = db.define('penugasan_pengurus', {
    // Model attributes are defined here
    id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    penugasan_id: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    nim: {
        type: DataTypes.STRING,
        allowNull: true
    },
    bidang_tugas: {
        type: DataTypes.STRING,
        allowNull: true
    },
    ditambahkan_pada: {
        type: DataTypes.DATE,
        allowNull: true
    },

}, {
    // Other model options go here
    freezeTableName: true,
    timestamps: false
});

// console.log(User === db.models.User); // true

PenugsanPengurusModel.hasOne(penugasan, { foreignKey: "penugasan_id" })
PenugsanPengurusModel.hasOne(penugasan, { foreignKey: "penugasan_id" })

PenugsanPengurusModel.hasOne(pengurus, { foreignKey: "nim" })
PenugsanPengurusModel.hasOne(pengurus, { foreignKey: "nim" })

module.exports = PenugsanPengurusModel