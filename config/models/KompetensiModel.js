const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const AgendaModel = db.define('agenda', {
    // Model attributes are defined here
    sertifkat_no : {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    agenda_nama: {
        type: DataTypes.STRING,
        allowNull: true
    },
    agenda_deskripsi: {
        type: DataTypes.STRING,
        allowNull: true
    },
    agenda_mulai: {
        type: DataTypes.DATEONLY,
        allowNull: true
    },
    agenda_selesai: {
        type: DataTypes.DATEONLY,
        allowNull: true
    },
    agenda_tempat: {
        type: DataTypes.STRING,
        allowNull: true
    },
    agenda_waktu: {
        type: DataTypes.TIME,
        allowNull: true
    },
    agenda_keterangan: {
        type: DataTypes.STRING,
        allowNull: true
    },
    agenda_pembuat: {
        type: DataTypes.STRING,
        allowNull: true
    },
    agenda_dibuat: {
        type: DataTypes.DATE,
        allowNull: true
    },

}, {
    // Other model options go here
    freezeTableName: true,
    timestamps: false
});

// console.log(User === db.models.User); // true

module.exports = AgendaModel