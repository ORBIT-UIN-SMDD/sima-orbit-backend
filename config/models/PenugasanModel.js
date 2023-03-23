const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const PenugsanModel = db.define('penugasan', {
    // Model attributes are defined here
    penugasan_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    penugasan_nama: {
        type: DataTypes.STRING,
        allowNull: true
    },
    penugasan_deskripsi: {
        type: DataTypes.STRING,
        allowNull: true
    },
    penugasan_mulai: {
        type: DataTypes.DATEONLY,
        allowNull: true
    },
    penugasan_selesai: {
        type: DataTypes.DATEONLY,
        allowNull: true
    },
    penugasan_tempat: {
        type: DataTypes.STRING,
        allowNull: true
    },
    penugasan_waktu: {
        type: DataTypes.TIME,
        allowNull: true
    },
    penugasan_oleh: {
        type: DataTypes.STRING,
        allowNull: true
    },
    penugasan_no_surat: {
        type: DataTypes.STRING,
        allowNull: true
    },
    penugasan_sk: {
        type: DataTypes.STRING,
        allowNull: true
    },
    penugasan_dibuat: {
        type: DataTypes.DATE,
        allowNull: true
    },

}, {
    // Other model options go here
    freezeTableName: true,
    timestamps: false
});

// console.log(User === db.models.User); // true

module.exports = PenugsanModel