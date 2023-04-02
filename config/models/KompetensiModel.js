const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const bidang = require("./BidangModel")
const anggota = require("./AnggotaModel")

const KompetensiModel = db.define('Kompetensi', {
    // Model attributes are defined here
    sertifkat_no: {
        type: DataTypes.STRING,
        allowNull: false,
        primaryKey: true
    },
    nim: {
        type: DataTypes.INTEGER,
        allowNull: true
    },
    bidang_id: {
        type: DataTypes.INTEGER,
        allowNull: true
    },
    kompetensi_nama: {
        type: DataTypes.STRING,
        allowNull: true
    },
    kompetensi_untuk: {
        type: DataTypes.STRING,
        allowNull: true
    },
    kompetensi_diverifikasi_oleh: {
        type: DataTypes.STRING,
        allowNull: true
    },
    kompetensi_tanggal: {
        type: DataTypes.DATEONLY,
        allowNull: true
    },
    kompetensi_sertifikat: {
        type: DataTypes.STRING,
        allowNull: true
    },

}, {
    // Other model options go here
    freezeTableName: true,
    timestamps: false
});

// console.log(User === db.models.User); // true

KompetensiModel.hasOne(bidang, { foreignKey: "bidang_id" })
KompetensiModel.belongsTo(bidang, { foreignKey: "bidang_id" })


module.exports = KompetensiModel