const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const penugasan = require("./PenugasanModel")
const anggota = require("./AnggotaModel")

const PenugsanAnggotaModel = db.define('penugasan', {
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

PenugsanAnggotaModel.hasOne(penugasan, { foreignKey: "penugasan_id" })
PenugsanAnggotaModel.hasOne(penugasan, { foreignKey: "penugasan_id" })

PenugsanAnggotaModel.hasOne(anggota, { foreignKey: "nim" })
PenugsanAnggotaModel.hasOne(anggota, { foreignKey: "nim" })

module.exports = PenugsanAnggotaModel