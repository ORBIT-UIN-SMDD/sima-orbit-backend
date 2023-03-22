const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const ProdiModel = db.define('prodi', {
    // Model attributes are defined here
    prodi_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    fakultas_id: {
        type: DataTypes.INTEGER,
        allowNull: true
    },
    prodi_nama: {
        type: DataTypes.STRING,
        allowNull: true
    },

}, {
    // Other model options go here
    freezeTableName: true,
    timestamps: false
});

// console.log(User === db.models.User); // true

module.exports = ProdiModel