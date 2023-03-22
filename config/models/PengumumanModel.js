const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const PengumumanModel = db.define('pengumuman', {
    // Model attributes are defined here
    pengumuman_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true
    },
    pengumuman_judul: {
        type: DataTypes.STRING,
        allowNull: true
    },
    pengumuman_deskripsi: {
        type: DataTypes.TEXT,
        allowNull: true
    },
    pengumuman_tanggal: {
        type: DataTypes.DATE,
        allowNull: true
    },
    pengumuman_pembuat: {
        type: DataTypes.STRING,
        allowNull: true
    },

}, {
    // Other model options go here
    freezeTableName: true,
    timestamps: false
});

// console.log(User === db.models.User); // true

module.exports = PengumumanModel