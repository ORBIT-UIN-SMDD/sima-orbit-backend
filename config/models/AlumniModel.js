const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const AlumniModel = db.define('alumni', {
    // Model attributes are defined here
    nim: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    foto: {
        type: DataTypes.STRING,
        allowNull: true
    },
    nama: {
        type: DataTypes.STRING,
        allowNull: false
    },
    tempat_lahir: {
        type: DataTypes.STRING,
        allowNull: false
    },
    tanggal_lahir: {
        type: DataTypes.DATE,
        allowNull: false
    },
    jenis_kelamin: {
        type: DataTypes.BOOLEAN,
        allowNull: false
    },
    alamat: {
        type: DataTypes.STRING,
        allowNull: true
    },
    no_telp: {
        type: DataTypes.STRING,
        allowNull: false
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false
    },
    periode: {
        type: DataTypes.STRING,
        allowNull: false
    },
    pekerjaan: {
        type: DataTypes.STRING,
        allowNull: false
    },
    domisili: {
        type: DataTypes.STRING,
        allowNull: false
    },
    golongan_darah: {
        type: DataTypes.STRING,
        allowNull: false
    },
}, {
    // Other model options go here
    freezeTableName: true,
    timestamps: false
});

// console.log(User === db.models.User); // true

module.exports = AlumniModel