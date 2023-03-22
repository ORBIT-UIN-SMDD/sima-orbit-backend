const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const FakultasModel = db.define('fakultas', {
    // Model attributes are defined here
    fakultas_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    fakultas_nama: {
        type: DataTypes.STRING,
        allowNull: true
    },

}, {
    // Other model options go here
    freezeTableName: true,
    timestamps: false
});

// console.log(User === db.models.User); // true

module.exports = FakultasModel